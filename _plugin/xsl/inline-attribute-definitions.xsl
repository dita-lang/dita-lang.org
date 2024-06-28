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

  <xsl:template match="*[contains(@class, ' topic/section ')][@id = 'attributes']">
    <xsl:copy>
      <xsl:apply-templates select="@* | node()"/>
      <xsl:for-each select="*[contains(@class, ' topic/p ')]/descendant::*[contains(@class, ' topic/xref ')]">
        <xsl:choose>
          <xsl:when test="@keyref = 'attributes-universal'">
            UNIVERSAL:
            <xsl:variable name="target-file" select="document(@href, .)" />
            <xsl:variable name="topic-id" select="'univ-atts'"/>
            <xsl:variable name="element-id" select="'universalatts'"/>
            <xsl:copy-of select="$target-file//*[@id = $topic-id]//*[@id = $element-id]"/>
          </xsl:when>
          <xsl:when test="exists(descendant::*[contains(@class, ' xml-d/xmlatt ')])">
            ELEMENT:
            <dl class="- topic/dl " outputclass="inlined">
              <xsl:variable name="target-file" select="document(substring-before(@href, '#'), .)" />
              <xsl:variable name="topic-id" select="substring-before(substring-after(@href, '#'), '/')"/>
              <xsl:variable name="element-id" select="substring-after(substring-after(@href, '#'), '/')"/>
              <xsl:copy-of select="$target-file//*[@id = $topic-id]//*[@id = $element-id]"/>
            </dl>
          </xsl:when>
          <xsl:otherwise>
            OTHER:
            <xsl:variable name="target-file" select="document(@href, .)" />
            <xsl:variable name="topic-id" select="'univ-atts'"/>
            <xsl:variable name="element-id" select="'universalatts'"/>
            <xsl:copy-of select="$target-file//*[@id = $topic-id]//*[@id = $element-id]"/>
          </xsl:otherwise>
        </xsl:choose>
      </xsl:for-each>
    </xsl:copy>
    <!--
    <section id="attributes">
      <title>Attributes</title>
      <p conkeyref="reuse-attributes/only-universal" platform="dita"/>
    </section>

    <xref href="../../common/reuse-w-lwdita/../../langRef/attributes/universalAttributes.dita"
      keyref="attributes-universal">universal attributes</xref>
    -->
  </xsl:template>

</xsl:stylesheet>
