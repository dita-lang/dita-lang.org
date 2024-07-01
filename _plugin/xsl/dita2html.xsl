<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
                xmlns:xs="http://www.w3.org/2001/XMLSchema"
                xmlns:dita-ot="http://dita-ot.sourceforge.net/ns/201007/dita-ot"
                xmlns:related-links="http://dita-ot.sourceforge.net/ns/200709/related-links"
                version="2.0"
                exclude-result-prefixes="xs dita-ot related-links">

  <xsl:import href="plugin:org.dita.html5:xsl/dita2html5Impl.xsl"/>

  <xsl:output method="html"
              encoding="UTF-8"
              indent="no"
              omit-xml-declaration="yes"/>

  <xsl:param name="repository"/>
  <xsl:param name="commit"/>
  <xsl:param name="layout" select="'base'" as="xs:string"/>
  <xsl:param name="root-chunk-override"/>

  <xsl:template match="/">
    <xsl:apply-templates select="*" mode="jekyll-front-matter"/>
    <xsl:apply-templates select="*" mode="chapterBody"/>
  </xsl:template>

  <xsl:template match="node()" mode="jekyll-front-matter">
    <xsl:text>---&#xA;</xsl:text>
    <xsl:text># Generated from DITA source&#xA;</xsl:text>
    <xsl:text>layout: </xsl:text>
    <xsl:apply-templates select="." mode="jekyll-layout"/>
    <xsl:text>&#xA;</xsl:text>
    <xsl:text>title: '</xsl:text>
    <xsl:variable name="title-text-only">
      <xsl:apply-templates select="*[contains(@class, ' topic/title ')][1]" mode="text-only"/>
    </xsl:variable>
    <xsl:value-of select="replace(normalize-space(string-join($title-text-only, ' ')), &quot;'&quot;, &quot;''&quot;)"/>
    <xsl:text>'&#xA;</xsl:text>
    <xsl:variable name="shortdescs" as="element()*"
                  select="*[contains(@class, ' topic/shortdesc ')] |
                          *[contains(@class, ' topic/abstract ')]/*[contains(@class, ' topic/shortdesc ')]"/>
    <xsl:if test="exists($shortdescs)">
      <xsl:text>description: '</xsl:text>
      <xsl:variable name="shortdesc-text-only">
        <xsl:for-each select="$shortdescs">
          <xsl:if test="position() ne 1">
            <xsl:text> </xsl:text>
          </xsl:if>
          <xsl:apply-templates select="." mode="text-only"/>
        </xsl:for-each>
      </xsl:variable>
      <xsl:value-of select="replace(normalize-space(string-join($shortdesc-text-only, ' ')), &quot;'&quot;, &quot;''&quot;)"/>
      <xsl:text>'&#xA;</xsl:text>
    </xsl:if>
    <xsl:if test="$root-chunk-override ne 'to-content'">
      <xsl:text>index: '</xsl:text>
      <xsl:value-of select="concat($PATH2PROJ, 'toc', $OUTEXT)"/>
      <xsl:text>'&#xA;</xsl:text>
    </xsl:if>
    <xsl:text>notices: '</xsl:text>
    <xsl:value-of select="concat($PATH2PROJ, 'resources/oasis-notices', $OUTEXT)"/>
    <xsl:text>'&#xA;</xsl:text>
    <xsl:if test="normalize-space($commit)">
      <xsl:text>commit: '</xsl:text>
      <xsl:value-of select="normalize-space($commit)"/>
      <xsl:text>'&#xA;</xsl:text>
    </xsl:if>
    <xsl:if test="normalize-space($repository)">
      <xsl:text>repository: '</xsl:text>
      <xsl:value-of select="normalize-space($repository)"/>
      <xsl:text>'&#xA;</xsl:text>
    </xsl:if>
    <xsl:if test="(/* | /*/*[contains(@class, ' topic/title ')])[tokenize(@outputclass, '\s+') = 'generated']">
      <xsl:text>generated: true</xsl:text>
      <xsl:text>&#xA;</xsl:text>
    </xsl:if>
    <xsl:text>classes: '</xsl:text>
    <xsl:value-of select="normalize-space(*/@outputclass)"/>
    <xsl:text>'&#xA;</xsl:text>
    <xsl:text>---&#xA;&#xA;</xsl:text>
  </xsl:template>

  <!-- Jekyll’s base layout adds the <body> element, so skip that (and related ID/attributes/outputclass/aname) here -->
  <xsl:template match="*" mode="chapterBody">
    <!--
    <body>
      <xsl:apply-templates select="." mode="addAttributesToHtmlBodyElement"/>
      <xsl:call-template name="setaname"/>  <!-\- For HTML4 compatibility, if needed -\->
      -->
      <xsl:apply-templates select="." mode="addHeaderToHtmlBodyElement"/>

      <!-- Include a user's XSL call here to generate a toc based on what's a child of topic -->
      <xsl:call-template name="gen-user-sidetoc"/>

      <xsl:apply-templates select="." mode="addContentToHtmlBodyElement"/>

      <xsl:call-template name="gen-user-aside"/>

      <xsl:apply-templates select="." mode="addFooterToHtmlBodyElement"/>
    <!--
    </body>
    -->
    <xsl:text>&#xA;</xsl:text>
  </xsl:template>

  <xsl:template name="gen-user-aside">
    <xsl:variable name="sections" as="element()*"
                  select="*[contains(@class, ' topic/body ')]/
                            *[contains(@class, ' topic/section ') or contains(@class, ' topic/example ')]
                             [exists(*[contains(@class, ' topic/title ')])]"/>
    <aside class="section-toc">
      <h2>In this section</h2>
      <xsl:if test="$sections">
        <ul>
          <xsl:for-each select="$sections">
            <li>
              <a href="{dita-ot:generate-id(dita-ot:get-topic-id(.), @id)}">
                <xsl:apply-templates select="*[contains(@class, ' topic/title ')]" mode="text-only"/>
              </a>
            </li>
          </xsl:for-each>
        </ul>
      </xsl:if>
    </aside>
  </xsl:template>

  <xsl:template match="*[contains(@class, ' topic/topic ')]/*[contains(@class, ' topic/title ')]">
    <xsl:param name="headinglevel" as="xs:integer">
      <xsl:choose>
        <xsl:when test="count(ancestor::*[contains(@class, ' topic/topic ')]) > 6">6</xsl:when>
        <xsl:otherwise><xsl:sequence select="count(ancestor::*[contains(@class, ' topic/topic ')])"/></xsl:otherwise>
      </xsl:choose>
    </xsl:param>
    <xsl:element name="h{$headinglevel}">
      <xsl:attribute name="class" select="concat('topictitle', $headinglevel)"/>
      <xsl:call-template name="commonattributes">
        <xsl:with-param name="default-output-class">topictitle<xsl:value-of select="$headinglevel"/></xsl:with-param>
      </xsl:call-template>
      <xsl:attribute name="id"><xsl:apply-templates select="." mode="return-aria-label-id"/></xsl:attribute>
      <xsl:choose>
        <xsl:when test="$headinglevel eq 1 and $FILENAME eq 'oasis-cover.dita'">
          <xsl:apply-templates select="$input.map/*/*[contains(@class, ' bookmap/booktitle ')]/*[contains(@class, ' bookmap/mainbooktitle ')]/node()"/>
        </xsl:when>
        <xsl:otherwise>
          <xsl:apply-templates/>
        </xsl:otherwise>
      </xsl:choose>
    </xsl:element>
  </xsl:template>

  <xsl:template match="node()" mode="jekyll-layout" as="xs:string">
    <xsl:value-of select="$layout"/>
  </xsl:template>

  <xsl:attribute-set name="main">
    <xsl:attribute name="class" separator=" " select="('col-lg-9', /*/@outputclass)"/>
    <xsl:attribute name="role">main</xsl:attribute>
  </xsl:attribute-set>

  <xsl:attribute-set name="toc">
    <xsl:attribute name="class">col-lg-3</xsl:attribute>
    <xsl:attribute name="role">toc</xsl:attribute>
  </xsl:attribute-set>

  <xsl:attribute-set name="nav.ul">
    <xsl:attribute name="class">nav nav-list</xsl:attribute>
  </xsl:attribute-set>

  <xsl:template match="*[contains(@class, ' topic/link ')][@role = ('child', 'descendant')]" priority="2" name="topic.link_child">
    <li>
      <xsl:call-template name="commonattributes">
        <xsl:with-param name="default-output-class" select="'ulchildlink'"/>
      </xsl:call-template>
      <!-- Allow for unknown metadata (future-proofing) -->
      <xsl:apply-templates select="*[contains(@class, ' topic/data ') or contains(@class, ' topic/foreign ')]"/>
      <xsl:apply-templates select="*[contains(@class, ' ditaot-d/ditaval-startprop ')]" mode="out-of-line"/>
      <strong>
        <xsl:apply-templates select="." mode="related-links:unordered.child.prefix"/>
        <xsl:apply-templates select="." mode="add-link-highlight-at-start"/>
        <a>
          <xsl:apply-templates select="." mode="add-linking-attributes"/>
          <xsl:apply-templates select="." mode="add-hoverhelp-to-child-links"/>

          <!--use linktext as linktext if it exists, otherwise use href as linktext-->
          <xsl:choose>
            <xsl:when test="*[contains(@class, ' topic/linktext ')]">
              <xsl:apply-templates select="*[contains(@class, ' topic/linktext ')]"/>
            </xsl:when>
            <xsl:otherwise>
              <!--use href-->
              <xsl:call-template name="href"/>
            </xsl:otherwise>
          </xsl:choose>
        </a>
        <xsl:apply-templates select="." mode="add-link-highlight-at-end"/>
      </strong>
      <xsl:apply-templates select="*[contains(@class, ' ditaot-d/ditaval-endprop ')]" mode="out-of-line"/>
      <div class="desc">
        <!--add the description on the next line, like a summary-->
        <xsl:apply-templates select="*[contains(@class, ' topic/desc ')]"/>
      </div>
    </li>
  </xsl:template>

  <xsl:template match="processing-instruction('sentence')">
    <xsl:variable name="values" select="tokenize(., '\s+')" as="xs:string*"/>
    <xsl:if test="$values = 'error-statement'">
      <span>
  <!--      <xsl:variable name="next" select="(following::processing-instruction('sentence'))[1]" as="processing-instruction()?"/>-->
  <!--      <xsl:if test="not($next = 'error-statement')">-->
        <xsl:attribute name="class" select="'error-statement'"/>
        <xsl:attribute name="id" select="string-join((ancestor::*[contains(@class, ' topic/topic ')][1]/@id, substring($values[1], 2)), '__')"/>
        <xsl:attribute name="data-id" select="substring($values[starts-with(., '#')][2], 2)"/>
  <!--      </xsl:if>-->
      </span>
    </xsl:if>
  </xsl:template>

</xsl:stylesheet>
