<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
                xmlns:xs="http://www.w3.org/2001/XMLSchema"
                xmlns:dita-ot="http://dita-ot.sourceforge.net/ns/201007/dita-ot"
                xmlns:related-links="http://dita-ot.sourceforge.net/ns/200709/related-links"
                xmlns:x="x"
                version="2.0"
                exclude-result-prefixes="xs dita-ot related-links x">

  <xsl:template match="@* | node()">
    <xsl:copy>
      <xsl:apply-templates select="@* | node()"/>
    </xsl:copy>
  </xsl:template>

  <xsl:template match="/">
    <xsl:variable name="non-normative" as="node()*">
      <xsl:apply-templates select="node()" mode="non-normative"/>
    </xsl:variable>
    <xsl:variable name="with-starts" as="node()*">
      <xsl:apply-templates select="$non-normative" mode="add-markup"/>
    </xsl:variable>
    <xsl:apply-templates select="$with-starts" mode="mark-error"/>
  </xsl:template>

  <!-- Add non-normative -->

  <xsl:template match="@* | node()" mode="non-normative">
    <xsl:copy>
      <xsl:apply-templates select="@* | node()" mode="#current"/>
    </xsl:copy>
  </xsl:template>

  <xsl:template match="*[contains(@class, ' topic/note ') or
                         contains(@class, ' topic/example ')] |
                       *[*[contains(@class, ' topic/title ')]
                          [matches(normalize-space(.), '^Examples?:', 'i')]]" mode="non-normative" priority="100">
    <xsl:copy>
      <xsl:apply-templates select="@* except @outputclass" mode="#current"/>
      <xsl:attribute name="outputclass" select="normalize-space(string-join(('non-normative', @outputclass), ' '))"/>
      <xsl:if test="self::*[contains(@class, ' topic/example ')] and empty(*[contains(@class, ' topic/title ')])">
        <title class="- topic/title ">Example</title>
      </xsl:if>
      <xsl:apply-templates select="node()" mode="#current"/>
    </xsl:copy>
  </xsl:template>

  <!-- Add sentence start -->

  <xsl:template match="@* | node()" mode="add-markup">
    <xsl:copy>
      <xsl:apply-templates select="@* | node()" mode="#current"/>
    </xsl:copy>
  </xsl:template>

  <xsl:template match="*[tokenize(@outputclass, '\s+') = 'non-normative']" mode="add-markup" priority="100">
    <xsl:copy-of select="."/>
  </xsl:template>

  <xsl:template match="*[contains(@class, ' topic/p ') or
                         contains(@class, ' topic/shortdesc ') or
                         contains(@class, ' topic/abstract ') or
                         contains(@class, ' topic/fig ') or
                         contains(@class, ' topic/td ') or
                         contains(@class, ' topic/stentry ') or
                         contains(@class, ' topic/dd ') or
                         contains(@class, ' topic/li ')]" mode="add-markup">
    <xsl:copy>
      <xsl:apply-templates select="@*" mode="#current"/>
      <xsl:processing-instruction name="sentence" select="generate-id(.)"/>
      <xsl:apply-templates select="node()" mode="#current"/>
    </xsl:copy>
  </xsl:template>

  <xsl:template match="text()" mode="add-markup" priority="10">
    <xsl:variable name="current" select="." as="text()"/>
    <xsl:analyze-string select="." regex="\.\s">
      <xsl:matching-substring>
        <xsl:value-of select="."/>
        <xsl:processing-instruction name="sentence" select="concat('#', generate-id($current))"/>
      </xsl:matching-substring>
      <xsl:non-matching-substring>
        <xsl:value-of select="."/>
      </xsl:non-matching-substring>
    </xsl:analyze-string>
  </xsl:template>

  <!-- Mark error statement sentences -->

  <xsl:template match="@* | node()" mode="mark-error">
    <xsl:copy>
      <xsl:apply-templates select="@* | node()" mode="#current"/>
    </xsl:copy>
  </xsl:template>

  <xsl:template match="processing-instruction('sentence')" mode="mark-error">
    <xsl:variable name="next" select="(following::processing-instruction('sentence'))[1]"/>
    <xsl:variable name="content-nodes" as="node()*"
                  select="following-sibling::node()[empty($next) or . &lt;&lt; $next]"/>
    <xsl:variable name="contents" as="xs:string">
      <xsl:value-of>
        <xsl:apply-templates select="$content-nodes" mode="text"/>
      </xsl:value-of>
    </xsl:variable>
    <xsl:processing-instruction name="sentence">
      <xsl:value-of select="."/>
      <xsl:if test="matches($contents, '\s?error[^s]', 'i')"> error-statement</xsl:if>
      <xsl:if test="$content-nodes/ancestor-or-self::*[tokenize(@outputclass, '\s+') = 'RFC-2119']"> rfc-2119-statement</xsl:if>
    </xsl:processing-instruction>
  </xsl:template>

  <xsl:template match="node()" mode="text">
    <xsl:apply-templates select="node()" mode="#current"/>
  </xsl:template>

  <xsl:template match="*[contains(@class, ' sw-d/filepath ') or x:is-block(.)]" mode="text" priority="10"/>

  <xsl:template match="text()" mode="text" priority="10">
    <xsl:value-of select="."/>
  </xsl:template>

  <xsl:function name="x:is-block" as="xs:boolean">
    <xsl:param name="element" as="node()"/>
    <xsl:variable name="class" select="string($element/@class)"/>
    <xsl:sequence select="
      contains($class, ' topic/body ') or
      contains($class, ' topic/shortdesc ') or
      contains($class, ' topic/abstract ') or
      contains($class, ' topic/title ') or
      contains($class, ' topic/section ') or
      contains($class, ' task/info ') or
      contains($class, ' topic/p ') or
      contains($class, ' topic/pre ') or
      contains($class, ' topic/note ') or
      contains($class, ' topic/fig ') or
      contains($class, ' topic/dl ') or
      contains($class, ' topic/sl ') or
      contains($class, ' topic/ol ') or
      contains($class, ' topic/ul ') or
      contains($class, ' topic/li ') or
      contains($class, ' topic/sli ') or
      contains($class, ' topic/itemgroup ') or
      contains($class, ' topic/section ') or
      contains($class, ' topic/table ') or
      contains($class, ' topic/entry ') or
      contains($class, ' topic/simpletable ') or
      contains($class, ' topic/stentry ') or
      contains($class, ' topic/example ')"/>
  </xsl:function>

</xsl:stylesheet>
