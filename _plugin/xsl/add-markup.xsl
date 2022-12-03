<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
                xmlns:xs="http://www.w3.org/2001/XMLSchema"
                xmlns:dita-ot="http://dita-ot.sourceforge.net/ns/201007/dita-ot"
                xmlns:related-links="http://dita-ot.sourceforge.net/ns/200709/related-links"
                version="2.0"
                exclude-result-prefixes="xs dita-ot related-links">

<xsl:output indent="yes"></xsl:output>

  <xsl:template match="@* | node()">
    <xsl:copy>
      <xsl:apply-templates select="@* | node()"/>
    </xsl:copy>
  </xsl:template>

  <xsl:template match="*[contains(@class, ' topic/body ')]">
    <xsl:copy>
      <xsl:apply-templates select="@*"/>
      <xsl:variable name="with-starts" as="node()*">
        <xsl:apply-templates select="node()" mode="add-markup"/>
      </xsl:variable>
      <xsl:apply-templates select="$with-starts" mode="mark-error"/>
    </xsl:copy>
  </xsl:template>

  <!-- Add sentence start -->

  <xsl:template match="@* | node()" mode="add-markup">
    <xsl:copy>
      <xsl:apply-templates select="@* | node()" mode="#current"/>
    </xsl:copy>
  </xsl:template>

  <xsl:template match="*[contains(@class, ' topic/p ') or
                         contains(@class, ' topic/shortdesc ') or
                         contains(@class, ' topic/abstract ') or
                         contains(@class, ' topic/fig ') or
                         contains(@class, ' topic/note ') or
                         contains(@class, ' topic/td ') or
                         contains(@class, ' topic/stentry ') or
                         contains(@class, ' topic/dd ') or
                         contains(@class, ' topic/li ')]" mode="add-markup">
    <xsl:copy>
      <xsl:apply-templates select="@*" mode="#current"/>
      <xsl:processing-instruction name="start"/>
      <xsl:apply-templates select="node()" mode="#current"/>
    </xsl:copy>
  </xsl:template>

  <xsl:template match="text()" mode="add-markup" priority="10">
    <xsl:analyze-string select="." regex="\.\s">
      <xsl:matching-substring>
        <xsl:value-of select="."/>
        <xsl:processing-instruction name="start"/>
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

  <xsl:template match="processing-instruction('start')" mode="mark-error">
    <xsl:variable name="next" select="(following::processing-instruction('start'))[1]"/>
    <xsl:variable name="contents" as="node()*" select="following-sibling::node()[. &lt;&lt; $next]"/>
    <xsl:if test="matches(string-join($contents), 'error', 'i')">
      <ph class="- topic/ph " outputclass="error-statement"/>
    </xsl:if>
  </xsl:template>

</xsl:stylesheet>
