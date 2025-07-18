<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
                xmlns:xs="http://www.w3.org/2001/XMLSchema"
                version="2.0"
                exclude-result-prefixes="xs">

  <xsl:param name="repository" as="xs:string"/>

  <xsl:template match="/">
    <xsl:variable name="prefix" as="xs:string">
      <xsl:choose>
        <xsl:when test="$repository = 'oasis-tcs/dita'">DITA</xsl:when>
        <xsl:when test="$repository = 'oasis-tcs/dita-lwdita'">LWDT</xsl:when>
        <xsl:when test="$repository = 'oasis-tcs/dita-techcomm'">DTTC</xsl:when>
      </xsl:choose>
    </xsl:variable>
    <xsl:variable name="root" select="/" as="document-node()"/>
    <xsl:variable name="topicrefs" as="xs:anyURI*"
                  select="descendant::*[contains(@class, ' map/topicref ')]
                                       [exists(@href)]
                                       [empty(@format) or @format = 'dita']
                                       [empty(@processing-role) or @processing-role = 'normal']/@href"/>
    <topic class="- topic/topic " id="generate-aggregated">
      <title class="- topic/title "/>
      <body class="- topic/body ">
        <section class="- topic/section " outputclass="generated">
          <title class="- topic/title ">Aggregated error statements</title>
          <dl class="- topic/dl ">
            <xsl:variable name="rows" as="element()*">
              <xsl:for-each-group select="$topicrefs" group-by=".">
                <xsl:for-each
                  select="document(current-grouping-key(), $root)//processing-instruction('sentence')[tokenize(., '\s+') = 'error-statement']">
                  <xsl:variable name="sentence-id" select="substring(tokenize(., '\s+')[1], 2)"/>
                  <dlentry class="- topic/dlentry "
                         href="{ current-grouping-key() }#{ /*/@id }/{ $sentence-id }">
                    <dd class="- topic/dd ">
                      <xsl:variable name="next" select="(following-sibling::processing-instruction('sentence'))[1]"/>
                      <xsl:copy-of select="following-sibling::node()[empty($next) or . &lt;&lt; $next]"/>
                    </dd>
                  </dlentry>
                </xsl:for-each>
              </xsl:for-each-group>
            </xsl:variable>
            <xsl:for-each select="$rows">
              <dlentry class="- topic/dlentry ">
                <dt class="- topic/dt ">
                  <xref class="- topic/xref " href="{@href}" outputclass="error-statement">
                    <xsl:value-of select="$prefix"/>
                    <xsl:text>ERR-</xsl:text>
                    <xsl:number format="0001" value="position() * 10"/>
                  </xref>
                </dt>
                <xsl:copy-of select="dd"/>
              </dlentry>
            </xsl:for-each>
          </dl>
        </section>
        <section class="- topic/section " outputclass="generated">
          <title class="- topic/title ">Implementation dependent statements</title>
          <dl class="- topic/dl ">
            <xsl:variable name="rows" as="element()*">
              <xsl:for-each-group select="$topicrefs" group-by=".">
                <xsl:for-each
                  select="document(current-grouping-key(), $root)//processing-instruction('sentence')[tokenize(., '\s+') = 'implementation-statement']">
                  <xsl:variable name="sentence-id" select="substring(tokenize(., '\s+')[1], 2)"/>
                  <dlentry class="- topic/dlentry "
                         href="{ current-grouping-key() }#{ /*/@id }/{ $sentence-id }">
                    <dd class="- topic/dd ">
                      <xsl:variable name="next" select="(following-sibling::processing-instruction('sentence'))[1]"/>
                      <xsl:copy-of select="following-sibling::node()[empty($next) or . &lt;&lt; $next]"/>
                    </dd>
                  </dlentry>
                </xsl:for-each>
              </xsl:for-each-group>
            </xsl:variable>
            <xsl:for-each select="$rows">
              <dlentry class="- topic/dlentry ">
                <dt class="- topic/dt ">
                  <xref class="- topic/xref " href="{@href}" outputclass="implementation-statement">
                    <xsl:value-of select="$prefix"/>
                    <xsl:text>IMP-</xsl:text>
                    <xsl:number format="0001" value="position() * 10"/>
                  </xref>
                </dt>
                <xsl:copy-of select="dd"/>
              </dlentry>
            </xsl:for-each>
          </dl>
        </section>
        <section class="- topic/section " outputclass="generated">
          <title class="- topic/title ">Aggregated RFC-2119 statements</title>
          <dl class="- topic/dl ">
            <xsl:variable name="rows" as="element()*">
              <xsl:for-each-group select="$topicrefs" group-by=".">
                <xsl:for-each
                  select="document(current-grouping-key(), $root)//processing-instruction('sentence')[tokenize(., '\s+') = 'rfc-2119-statement']">
                  <xsl:variable name="sentence-id" select="substring(tokenize(., '\s+')[1], 2)"/>
                  <dlentry class="- topic/dlentry "
                         href="{ current-grouping-key() }#{ /*/@id }/{ $sentence-id }">
                    <dd class="- topic/dd ">
                      <xsl:variable name="next" select="(following-sibling::processing-instruction('sentence'))[1]"/>
                      <xsl:copy-of select="following-sibling::node()[empty($next) or . &lt;&lt; $next]"/>
                    </dd>
                  </dlentry>
                </xsl:for-each>
              </xsl:for-each-group>
            </xsl:variable>
            <xsl:for-each select="$rows">
              <dlentry class="- topic/dlentry ">
                <dt class="- topic/dt ">
                  <xref class="- topic/xref " href="{@href}" outputclass="rfc-2119-statement">
                    <xsl:value-of select="$prefix"/>
                    <xsl:text>REQ-</xsl:text>
                    <xsl:number format="0001" value="position() * 10"/>
                  </xref>
                </dt>
                <xsl:copy-of select="dd"/>
              </dlentry>
            </xsl:for-each>
          </dl>
        </section>
      </body>
    </topic>
  </xsl:template>

</xsl:stylesheet>
