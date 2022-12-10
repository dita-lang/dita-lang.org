<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
                xmlns:xs="http://www.w3.org/2001/XMLSchema"
                version="2.0"
                exclude-result-prefixes="xs">

  <xsl:template match="/">
    <xsl:variable name="root" select="/" as="document-node()"/>
    <xsl:variable name="topicrefs" as="xs:anyURI*"
                  select="descendant::*[contains(@class, ' map/topicref ')]
                                       [exists(@href)]
                                       [empty(@format) or @format = 'dita']
                                       [empty(@processing-role) or @processing-role = 'normal']/@href"/>
    <topic class="- topic/topic " id="generate-aggregated">
      <title class="- topic/title "/>
      <body class="- topic/body ">
        <section class="- topic/section " outputclass="non-normative">
          <title class="- topic/title">Aggregated error statements</title>
          <simpletable class="- topic/simpletable ">
            <xsl:variable name="rows" as="element()*">
              <xsl:for-each-group select="$topicrefs" group-by=".">
                <xsl:for-each
                  select="document(current-grouping-key(), $root)//processing-instruction('sentence')[tokenize(., '\s+') = 'error-statement']">
                  <strow class="- topic/strow "
                         href="{ current-grouping-key() }#{ /*/@id }/{ tokenize(., '\s+')[1] }">
                    <stentry class="- topic/stentry ">
                      <xsl:variable name="next" select="(following-sibling::processing-instruction('sentence'))[1]"/>
                      <xsl:copy-of select="following-sibling::node()[empty($next) or . &lt;&lt; $next]"/>
                    </stentry>
                  </strow>
                </xsl:for-each>
              </xsl:for-each-group>
            </xsl:variable>
            <xsl:for-each select="$rows">
              <strow class="- topic/strow ">
                <stentry class="- topic/stentry ">
                  <xref class="- topic/xref " href="{@href}" outputclass="error-statement">
                    <xsl:text>DITA</xsl:text>
                    <xsl:number format="0001" value="position()"/>
                  </xref>
                </stentry>
                <xsl:copy-of select="stentry"/>
              </strow>
            </xsl:for-each>
          </simpletable>
        </section>
        <section class="- topic/section " outputclass="non-normative">
          <title class="- topic/title">Aggregated RFC-2119 statements</title>
          <simpletable class="- topic/simpletable ">
            <xsl:variable name="rows" as="element()*">
              <xsl:for-each-group select="$topicrefs" group-by=".">
                <xsl:for-each
                  select="document(current-grouping-key(), $root)//processing-instruction('sentence')[tokenize(., '\s+') = 'rfc-2119-statement']">
                  <strow class="- topic/strow "
                         href="{ current-grouping-key() }#{ /*/@id }/{ tokenize(., '\s+')[1] }">
                    <stentry class="- topic/stentry ">
                      <xsl:variable name="next" select="(following-sibling::processing-instruction('sentence'))[1]"/>
                      <xsl:copy-of select="following-sibling::node()[empty($next) or . &lt;&lt; $next]"/>
                    </stentry>
                  </strow>
                </xsl:for-each>
              </xsl:for-each-group>
            </xsl:variable>
            <xsl:for-each select="$rows">
              <strow class="- topic/strow ">
                <stentry class="- topic/stentry ">
                  <xref class="- topic/xref " href="{@href}" outputclass="rfc-2119-statement">
                    <xsl:text>RFC</xsl:text>
                    <xsl:number format="0001" value="position()"/>
                  </xref>
                </stentry>
                <xsl:copy-of select="stentry"/>
              </strow>
            </xsl:for-each>
          </simpletable>
        </section>
      </body>
    </topic>
  </xsl:template>

</xsl:stylesheet>
