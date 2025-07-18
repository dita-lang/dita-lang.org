<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
                xmlns:xs="http://www.w3.org/2001/XMLSchema"
                version="2.0"
                exclude-result-prefixes="xs">

  <xsl:template match="node() | @*">
    <xsl:copy>
      <xsl:apply-templates select="node() | @*"/>
    </xsl:copy>
  </xsl:template>

  <xsl:template match="*[contains(@class, ' bookmap/chapter ')]/*[contains(@class, ' map/topicref ')] |
                       *[contains(@class, ' bookmap/appendix ')]">
    <xsl:copy>
      <xsl:apply-templates select="@*"/>
      <xsl:attribute name="chunk">to-content</xsl:attribute>
      <xsl:apply-templates select="node()"/>
    </xsl:copy>
  </xsl:template>

</xsl:stylesheet>
