<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
                xmlns:xs="http://www.w3.org/2001/XMLSchema"
                xmlns:dita-ot="http://dita-ot.sourceforge.net/ns/201007/dita-ot"
                version="2.0"
                exclude-result-prefixes="xs dita-ot">

  <xsl:import href="plugin:org.dita.base:xsl/common/uri-utils.xsl"/>

  <xsl:param name="aggregated" as="xs:string"/>

  <xsl:variable name="baseUri" select="base-uri(/)"/>
  <xsl:variable name="id" select="/*/@id"/>

  <xsl:template match="@* | node()">
    <xsl:copy>
      <xsl:apply-templates select="@* | node()"/>
    </xsl:copy>
  </xsl:template>

  <xsl:template match="processing-instruction('sentence')[tokenize(., '\s+') = 'error-statement']">
    <xsl:variable name="error-id" select="substring(tokenize(., '\s+')[1], 2)"/>
    <xsl:variable name="doc" select="document($aggregated)"/>
    <xsl:processing-instruction name="{name()}">
      <xsl:value-of select="."/>
      <xsl:text> </xsl:text>
      <xsl:value-of select="concat('#', $doc/descendant::*[contains(@class, ' topic/xref ')]
                                              [ends-with(@href, concat($id, '/', $error-id))])"/>
    </xsl:processing-instruction>
  </xsl:template>

  <xsl:template match="*[contains(@class, ' topic/data ') and @name = 'rfc-list']">
    <xsl:variable name="doc" select="document($aggregated)"/>

    <xsl:apply-templates select="$doc/*[contains(@class, ' topic/topic ')]/*[contains(@class, ' topic/body ')]/*" mode="embed"/>
  </xsl:template>

  <xsl:template match="@* | node()" mode="embed">
    <xsl:copy>
      <xsl:apply-templates select="@* | node()" mode="#current"/>
    </xsl:copy>
  </xsl:template>

  <xsl:template match="@href" mode="embed">
    <xsl:variable name="href" select="resolve-uri(., base-uri(.))"/>
    <xsl:attribute name="{name()}" select="dita-ot:relativize($baseUri, $href)"/>
  </xsl:template>

</xsl:stylesheet>
