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

  <xsl:variable name="attributes-dl" as="element(dl)*"
                select="//*[@id = 'attributes']
                          //*[contains(@class, ' topic/dl ')]
                             [empty(ancestor::*[contains(@class, ' topic/dl ')])]"/>

  <xsl:template match="*[contains(@class, ' topic/section ')][@id = 'attributes']">
<!--    <xsl:if test="count(p) gt 1">-->
<!--      <xsl:message>-->
<!--        <xsl:processing-instruction name="level" select="'ERROR'"/>-->
<!--        <xsl:value-of select="base-uri()"/>-->
<!--      </xsl:message>-->
<!--    </xsl:if>-->
    <xsl:variable name="attr-list" select="*[contains(@class, ' topic/p ')][starts-with(normalize-space(.), 'The following attributes are available on this element')]" as="element()?"/>
    <xsl:variable name="xrefs" select="descendant::*[contains(@class, ' topic/p ')]/descendant::*[contains(@class, ' topic/xref ')]" as="element()*"/>
    <xsl:variable name="inlined" as="element()*">
      <!-- Descriptions -->
      <xsl:sequence select="$attributes-dl"/>
      <!-- Inlined attribute groups -->
      <xsl:for-each select="$xrefs">
        <xsl:choose>
          <xsl:when test="starts-with(@keyref, 'attributes-common/') and
                          not(starts-with(@keyref, 'attributes-common/attr-'))">
            <dl class="- topic/dl ">
              <xsl:apply-templates select="." mode="resolve-group">
                <xsl:with-param name="topic-id" select="'common-atts'"/>
                <xsl:with-param name="element-id" select="substring-after(@keyref, '/')"/>
              </xsl:apply-templates>
            </dl>
          </xsl:when>
          <xsl:when test="starts-with(@keyref, 'attributes-universal/') and
                          not(starts-with(@keyref, 'attributes-universal/attr-'))">
            <dl class="- topic/dl ">
              <xsl:apply-templates select="." mode="resolve-group">
                <xsl:with-param name="topic-id" select="'univ-atts'"/>
                <xsl:with-param name="element-id" select="substring-after(@keyref, '/')"/>
              </xsl:apply-templates>
            </dl>
          </xsl:when>
          <xsl:when test="@keyref = 'attributes-universal'">
            <xsl:if test="false()">
              <xsl:variable name="target-file" select="x:get-target-file(@href, /)" as="document-node()"/>
  <!--            <xsl:apply-templates select="." mode="resolve">-->
  <!--              <xsl:with-param name="topic-id" select="'univ-atts'"/>-->
  <!--              <xsl:with-param name="element-id" select="'universalatts'"/>-->
  <!--            </xsl:apply-templates>-->
              <dl class="- topic/dl ">
                <xsl:apply-templates select="." mode="resolve">
                  <xsl:with-param name="target-file" select="$target-file"/>
                  <xsl:with-param name="topic-id" select="'univ-atts'"/>
                  <xsl:with-param name="element-id" select="'class'"/>
                </xsl:apply-templates>
                <xsl:apply-templates select="." mode="resolve">
                  <xsl:with-param name="target-file" select="$target-file"/>
                  <xsl:with-param name="topic-id" select="'univ-atts'"/>
                  <xsl:with-param name="element-id" select="'outputclass'"/>
                </xsl:apply-templates>
                <xsl:apply-templates select="." mode="resolve-group">
                  <xsl:with-param name="target-file" select="$target-file"/>
                  <xsl:with-param name="topic-id" select="'univ-atts'"/>
                  <xsl:with-param name="element-id" select="'idatts'"/>
                </xsl:apply-templates>
                <xsl:apply-templates select="." mode="resolve-group">
                  <xsl:with-param name="target-file" select="$target-file"/>
                  <xsl:with-param name="topic-id" select="'univ-atts'"/>
                  <xsl:with-param name="element-id" select="'localizationatts'"/>
                </xsl:apply-templates>
                <xsl:apply-templates select="." mode="resolve-group">
                  <xsl:with-param name="target-file" select="$target-file"/>
                  <xsl:with-param name="topic-id" select="'univ-atts'"/>
                  <xsl:with-param name="element-id" select="'metadataatts'"/>
                </xsl:apply-templates>
              </dl>
            </xsl:if>
          </xsl:when>
          <xsl:when test="exists(descendant::*[contains(@class, ' xml-d/xmlatt ')])">
            <dl class="- topic/dl ">
              <xsl:apply-templates select="." mode="resolve"/>
            </dl>
          </xsl:when>
          <xsl:otherwise>
            <p class="- topic/p ">FIXME:</p>
            <xsl:apply-templates select="."/>
            <!--
            <xsl:apply-templates select="." mode="resolve">
              <xsl:with-param name="topic-id" select="'univ-atts'"/>
              <xsl:with-param name="element-id" select="'universalatts'"/>
            </xsl:apply-templates>
            -->
          </xsl:otherwise>
        </xsl:choose>
      </xsl:for-each>
      <!-- Exceptions -->
      <xsl:for-each select="descendant::*[contains(@class, ' topic/p ')][@outputclass = 'attr-exception']">
        <dl class="- topic/dl ">
          <xsl:choose>
            <xsl:when test="*[contains(@class, ' topic/ul ')]">
              <xsl:apply-templates select="descendant::*[contains(@class, ' topic/li ')]" mode="exception"/>
            </xsl:when>
            <xsl:otherwise>
              <xsl:apply-templates select="." mode="exception"/>
            </xsl:otherwise>
          </xsl:choose>
        </dl>
      </xsl:for-each>
    </xsl:variable>
    <xsl:copy>
      <xsl:apply-templates select="@* | node()" mode="strip"/>
      <xsl:if test="$xrefs[@keyref = 'attributes-universal']">
        <p class="- topic/p " outputclass="inlined-attributes">
          <xsl:text>The following attributes are available on this element: </xsl:text>
          <xsl:sequence select="$xrefs[@keyref = 'attributes-universal']"/>
          <xsl:variable name="exception-text" as="text()?"
                        select="$attr-list/text()[contains(normalize-space(), 'which is removed for all elements in this domain')]"/>
          <xsl:if test="exists($exception-text)">
            <xsl:text> (except for </xsl:text>
            <xsl:sequence select="$exception-text/preceding-sibling::*[contains(@class, ' xml-d/xmlatt ')][1]"/>
            <xsl:text> which is removed for all elements in this domain)</xsl:text>
          </xsl:if>
          <xsl:if test="$inlined/*">
            <xsl:text> and the attributes defined below</xsl:text>
          </xsl:if>
          <xsl:text>.</xsl:text>
        </p>
      </xsl:if>
      <dl class="- topic/dl " outputclass="inlined-attributes">
        <xsl:for-each-group select="$inlined/*"
                            group-by="*[contains(@class, ' topic/dt ')]//*[contains(@class, ' xml-d/xmlatt ')]/string()">
          <xsl:sort select="lower-case(normalize-space(*[contains(@class, ' topic/dt ')]))"/>

<!--          <xsl:message>-->
<!--            <xsl:processing-instruction name="level" select="'ERROR'"/>-->
<!--            <xsl:value-of select="'group', current-grouping-key(), current-group()[1]/name()" separator=": "/>-->
<!--          </xsl:message>-->

<!--          &lt;<xsl:value-of select="name()"/>&gt;-->
          <dlentry class="- topic/dlentry ">
            <xsl:sequence select="current-group()[1]/*[contains(@class, ' topic/dt ')]"/>
            <xsl:sequence select="current-group()/*[contains(@class, ' topic/dd ')]"/>
          </dlentry>
        </xsl:for-each-group>
      </dl>
    </xsl:copy>
  </xsl:template>

  <xsl:template match="*" mode="exception">
    <dlentry class="- topic/dlentry ">
      <dt class="- topic/dt ">
        <xsl:sequence select="descendant::*[contains(@class, ' xml-d/xmlatt ')][1]"/>
        <xsl:if test="count(distinct-values(descendant::*[contains(@class, ' xml-d/xmlatt ')])) gt 1">
          <xsl:message>
            <xsl:processing-instruction name="level" select="'ERROR'"/>
            <xsl:value-of select="base-uri(), 'Multiple xmlatt elements', descendant::*[contains(@class, ' xml-d/xmlatt ')]" separator=": "/>
          </xsl:message>
        </xsl:if>
      </dt>
      <dd class="- topic/dd ">
        <xsl:sequence select="node()"/>
      </dd>
    </dlentry>
  </xsl:template>

  <xsl:function name="x:get-target-file" as="document-node()">
    <xsl:param name="href"/>
    <xsl:param name="current-node"/>
    <xsl:sequence select="document(if (contains($href, '#')) then substring-before($href, '#') else $href, $current-node)" />
  </xsl:function>

  <!-- Ignore namespace declaration -->
  <xsl:template match="*[contains(@class, ' xml-d/xmlatt ') and . = 'xmlns:ditaarch']" mode="resolve" priority="10"/>

  <xsl:template match="*" mode="resolve" as="element(dlentry)*">
    <xsl:param name="href" select="@href"/>
    <xsl:param name="topic-id" select="substring-before(substring-after($href, '#'), '/')"/>
    <xsl:param name="element-id" select="substring-after(substring-after($href, '#'), '/')"/>
    <xsl:param name="target-file" select="x:get-target-file($href, /)" as="document-node()"/>

    <xsl:variable name="target" as="element()?"
                  select="$target-file//*[@id = $topic-id]//*[@id = $element-id]"/>
    <xsl:if test="empty($target)">
      <xsl:message>
        <xsl:processing-instruction name="level" select="'ERROR'"/>
        <xsl:value-of select="'Attribute definition missing in resolve:', $href, $topic-id, $element-id" separator=" "/>
      </xsl:message>
    </xsl:if>

    <xsl:variable name="dlentry" as="element(dlentry)?"
                  select="$target/ancestor-or-self::*[contains(@class, ' topic/dlentry ')][1]"/>

    <xsl:sequence select="$dlentry"/>
  </xsl:template>

  <xsl:template match="*" mode="resolve-group" as="element(dlentry)*">
    <xsl:param name="href" select="@href"/>
    <xsl:param name="topic-id" select="substring-before(substring-after($href, '#'), '/')"/>
    <xsl:param name="element-id" select="substring-after(substring-after($href, '#'), '/')"/>
    <xsl:param name="target-file" select="x:get-target-file($href, /)" as="document-node()" />

    <xsl:variable name="target" as="element()?"
                  select="$target-file//*[@id = $topic-id]//*[@id = $element-id]"/>
    <xsl:if test="empty($target)">
      <xsl:message>
        <xsl:processing-instruction name="level" select="'ERROR'"/>
        <xsl:value-of select="'Attribute definition missing in resolve-group:', $href, $topic-id, $element-id" separator=" "/>
      </xsl:message>
    </xsl:if>
    <xsl:variable name="dlentry" as="element(dlentry)?"
                  select="$target/ancestor-or-self::*[contains(@class, ' topic/dlentry ')][1]"/>

    <xsl:choose>
      <!-- This should have been a link to `attr-` prefix, fallback to linking to element -->
      <xsl:when test="$dlentry/*[contains(@class, ' topic/dt ')]//*[contains(@class, ' xml-d/xmlatt ')]">
        <xsl:sequence select="$dlentry"/>
      </xsl:when>
      <xsl:otherwise>
        <xsl:for-each select="$dlentry/*[contains(@class, ' topic/dd ')]//*[contains(@class, ' xml-d/xmlatt ')]">
          <xsl:apply-templates select="." mode="resolve">
            <xsl:with-param name="target-file" select="$target-file"/>
            <xsl:with-param name="topic-id" select="$topic-id"/>
            <!-- FIXME: when spec uses consistent colon replacement, use only one element ID -->
            <xsl:with-param name="element-id" select="translate(., ':', '-'), translate(., ':', '')"/>
          </xsl:apply-templates>
        </xsl:for-each>
      </xsl:otherwise>
    </xsl:choose>
  </xsl:template>

  <xsl:template match="@* | node()" mode="strip">
    <xsl:copy>
      <xsl:apply-templates select="@*" mode="#current"/>
      <xsl:if test="(some $dl in $attributes-dl satisfies . is $dl) or
                    (contains(@class, ' topic/p ') and starts-with(normalize-space(.), 'The following attributes are available on this element')) or
                    @outputclass = 'attr-exception'">
        <xsl:attribute name="outputclass" select="'attributes-prose', @outputclass" separator=" "/>
      </xsl:if>
      <xsl:apply-templates select="node()" mode="#current"/>
    </xsl:copy>
  </xsl:template>

</xsl:stylesheet>
