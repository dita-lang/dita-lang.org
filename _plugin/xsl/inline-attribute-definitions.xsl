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
                select="//*[@id = 'attributes']//*[contains(@class, ' topic/dl ')]"/>

  <xsl:template match="*[contains(@class, ' topic/section ')][@id = 'attributes']">
    <xsl:variable name="inlined" as="element()*">
      <xsl:sequence select="$attributes-dl"/>
      <xsl:for-each select="descendant::*[contains(@class, ' topic/p ')]/descendant::*[contains(@class, ' topic/xref ')]">
        <xsl:choose>
          <xsl:when test="starts-with(@keyref, 'attributes-common/')">
<!--            <xsl:variable name="target-file" select="x:get-target-file(@href, /)" />-->
            <dl class="- topic/dl ">
              <xsl:apply-templates select="." mode="resolve-group">
  <!--              <xsl:with-param name="target-file" select="$target-file"/>-->
                <xsl:with-param name="topic-id" select="'common-atts'"/>
                <xsl:with-param name="element-id" select="substring-after(@keyref, '/')"/>
              </xsl:apply-templates>
            </dl>
          </xsl:when>
          <xsl:when test="@keyref = 'attributes-universal'">
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
    </xsl:variable>
    <xsl:copy>
      <xsl:apply-templates select="@* | node()" mode="strip"/>

<!--    <section class="- topic/section " id="inlined-attributes">-->
<!--      <title class="- topic/title ">Inlined Attributes</title>-->
      <dl class="- topic/dl " outputclass="inlined-attributes">
        <xsl:for-each select="$inlined/*">
          <xsl:sort select="lower-case(normalize-space(*[contains(@class, ' topic/dt ')]))"/>
<!--          &lt;<xsl:value-of select="name()"/>&gt;-->
          <xsl:sequence select="."/>
        </xsl:for-each>
      </dl>
<!--    </section>-->
    </xsl:copy>
  </xsl:template>

  <xsl:function name="x:get-target-file" as="document-node()">
    <xsl:param name="href"/>
    <xsl:param name="current-node"/>
    <xsl:sequence select="document(if (contains($href, '#')) then substring-before($href, '#') else $href, $current-node)" />
  </xsl:function>

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

    <xsl:for-each select="$dlentry/*[contains(@class, ' topic/dd ')]//*[contains(@class, ' xml-d/xmlatt ')]">
      <xsl:apply-templates select="." mode="resolve">
        <xsl:with-param name="target-file" select="$target-file"/>
        <xsl:with-param name="topic-id" select="$topic-id"/>
        <xsl:with-param name="element-id" select="translate(., ':', '-')"/>
      </xsl:apply-templates>
    </xsl:for-each>
  </xsl:template>

  <xsl:template match="@* | node()" mode="strip">
    <xsl:copy>
      <xsl:apply-templates select="@*" mode="#current"/>
      <xsl:if test="(some $dl in $attributes-dl satisfies . is $dl) or
                    (contains(@class, ' topic/p ') and starts-with(normalize-space(.), 'The following attributes are available on this element'))">
        <xsl:attribute name="outputclass" select="'attributes-prose', @outputclass" separator=" "/>
      </xsl:if>
      <xsl:apply-templates select="node()" mode="#current"/>
    </xsl:copy>
  </xsl:template>

</xsl:stylesheet>
