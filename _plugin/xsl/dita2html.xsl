<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
                xmlns:xs="http://www.w3.org/2001/XMLSchema"
                xmlns:dita-ot="http://dita-ot.sourceforge.net/ns/201007/dita-ot"
                xmlns:dita2html="http://dita-ot.sourceforge.net/ns/200801/dita2html"
                xmlns:related-links="http://dita-ot.sourceforge.net/ns/200709/related-links"
                version="2.0"
                exclude-result-prefixes="xs dita-ot dita2html related-links">

  <xsl:import href="plugin:org.dita.html5:xsl/dita2html5Impl.xsl"/>

  <xsl:output method="html"
              encoding="UTF-8"
              indent="no"
              omit-xml-declaration="yes"/>

  <xsl:param name="repository"/>
  <xsl:param name="commit"/>
  <xsl:param name="layout" select="'base.njk'" as="xs:string"/>
  <xsl:param name="root-chunk-override"/>

  <xsl:template match="/">
    <xsl:apply-templates select="*" mode="eleventy-front-matter"/>
    <xsl:apply-templates select="*" mode="chapterBody"/>
  </xsl:template>

  <xsl:template match="node()" mode="eleventy-front-matter">
    <xsl:text>---&#xA;</xsl:text>
<!--    <xsl:text># Generated from DITA source&#xA;</xsl:text>-->
    <xsl:text>layout: </xsl:text>
    <xsl:apply-templates select="." mode="eleventy-layout"/>
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

  <!-- 11ty's base layout adds the <body> element, so skip that (and related ID/attributes/outputclass/aname) here -->
  <xsl:template match="*" mode="chapterBody">
    <!--
    <body>
      <xsl:apply-templates select="." mode="addAttributesToHtmlBodyElement"/>
      <xsl:call-template name="setaname"/>  <!-\- For HTML4 compatibility, if needed -\->
      -->
      <xsl:apply-templates select="." mode="addHeaderToHtmlBodyElement"/>

      <!-- Include a user's XSL call here to generate a toc based on what's a child of topic -->
      <xsl:apply-templates select="." mode="gen-user-sidetoc"/>

      <xsl:apply-templates select="." mode="addContentToHtmlBodyElement"/>

      <xsl:apply-templates select="." mode="addFooterToHtmlBodyElement"/>
    <!--
    </body>
    -->
    <xsl:text>&#xA;</xsl:text>
  </xsl:template>

  <xsl:template match="*" mode="addContentToHtmlBodyElement">
    <main xsl:use-attribute-sets="main">
      <article xsl:use-attribute-sets="article">
        <xsl:attribute name="aria-labelledby">
          <xsl:apply-templates select="*[contains(@class,' topic/title ')] |
                                       self::dita/*[1]/*[contains(@class,' topic/title ')]" mode="return-aria-label-id"/>
        </xsl:attribute>
        <xsl:apply-templates select="*[contains(@class, ' ditaot-d/ditaval-startprop ')]" mode="out-of-line"/>
        <xsl:apply-templates/>
        <xsl:call-template name="gen-user-aside"/>
        <!-- TODO: Replace with mode="gen-endnotes" -->
        <xsl:call-template name="gen-endnotes"/>    <!-- include footnote-endnotes -->
        <xsl:apply-templates select="*[contains(@class, ' ditaot-d/ditaval-endprop ')]" mode="out-of-line"/>
      </article>
    </main>
  </xsl:template>

  <xsl:template name="gen-user-aside">
    <xsl:variable name="sections" as="element()*"
                  select="*[contains(@class, ' topic/body ')]/
                            *[contains(@class, ' topic/section ') or contains(@class, ' topic/example ')]
                             [exists(*[contains(@class, ' topic/title ')])]"/>
    <aside class="section-toc" role="aside">
      <xsl:if test="$sections">
        <h2>In this section</h2>
        <ul>
          <xsl:for-each select="$sections">
            <li>
              <a href="#{dita-ot:generate-id((/*/@id), (@id, generate-id(.))[1])}">
                <xsl:apply-templates select="*[contains(@class, ' topic/title ')]" mode="text-only"/>
              </a>
            </li>
          </xsl:for-each>
        </ul>
      </xsl:if>
    </aside>
  </xsl:template>

  <xsl:template name="gen-toc-id">
    <xsl:if test="(contains(@class, ' topic/section ') or contains(@class, ' topic/example ')) and empty(@id)">
      <xsl:attribute name="id" select="(/*/@id, generate-id(.))" separator="__"/>
    </xsl:if>
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

  <xsl:template name="non-normative-label">
    <p class="non-normative-label">
      <xsl:text>This section is non-normative.</xsl:text>
    </p>
  </xsl:template>

  <xsl:template match="*[contains(@class, ' topic/shortdesc ')]" mode="outofline">
    <xsl:if test="tokenize(../@outputclass, '\s+')['non-normative'] or
                  $current-topicref/ancestor-or-self::*[contains(@class, ' bookmap/appendix ')]">
      <xsl:call-template name="non-normative-label"/>
    </xsl:if>
    <xsl:next-match/>
  </xsl:template>

  <xsl:template match="*[contains(@class, ' topic/abstract ')]" mode="outofline">
    <xsl:if test="tokenize(../@outputclass, '\s+')['non-normative'] or
                  $current-topicref/ancestor-or-self::*[contains(@class, ' bookmap/appendix ')]">
      <xsl:call-template name="non-normative-label"/>
    </xsl:if>
    <xsl:next-match/>
  </xsl:template>

  <xsl:template match="*[contains(@class, ' topic/body ')]" name="topic.body">
    <div>
      <xsl:call-template name="commonattributes"/>
      <xsl:call-template name="setidaname"/>
      <xsl:apply-templates select="*[contains(@class, ' ditaot-d/ditaval-startprop ')]" mode="out-of-line"/>

      <xsl:if test="tokenize(../@outputclass, '\s+')['non-normative'] or
                    $current-topicref/ancestor-or-self::*[contains(@class, ' bookmap/appendix ')]">
        <xsl:call-template name="non-normative-label"/>
      </xsl:if>

      <!-- here, you can generate a toc based on what's a child of body -->
      <!--xsl:call-template name="gen-sect-ptoc"/--><!-- Works; not always wanted, though; could add a param to enable it.-->

      <!-- Insert prev/next links. since they need to be scoped by who they're 'pooled' with, apply-templates in 'hierarchylink' mode to linkpools (or related-links itself) when they have children that have any of the following characteristics:
           - role=ancestor (used for breadcrumb)
           - role=next or role=previous (used for left-arrow and right-arrow before the breadcrumb)
           - importance=required AND no role, or role=sibling or role=friend or role=previous or role=cousin (to generate prerequisite links)
           - we can't just assume that links with importance=required are prerequisites, since a topic with eg role='next' might be required, while at the same time by definition not a prerequisite -->

      <!-- Added for DITA 1.1 "Shortdesc proposal" -->
      <!-- get the abstract para -->
      <xsl:apply-templates select="preceding-sibling::*[contains(@class, ' topic/abstract ')]" mode="outofline"/>

      <!-- get the shortdesc para -->
      <xsl:apply-templates select="preceding-sibling::*[contains(@class, ' topic/shortdesc ')]" mode="outofline"/>

      <!-- Insert pre-req links - after shortdesc - unless there is a prereq section about -->
      <xsl:apply-templates select="following-sibling::*[contains(@class, ' topic/related-links ')]" mode="prereqs"/>

      <xsl:apply-templates/>
      <xsl:apply-templates select="*[contains(@class, ' ditaot-d/ditaval-endprop ')]" mode="out-of-line"/>
    </div>
  </xsl:template>

  <xsl:template match="node()" mode="eleventy-layout" as="xs:string">
    <xsl:value-of select="$layout"/>
  </xsl:template>

  <xsl:attribute-set name="main">
<!--    <xsl:attribute name="class" separator=" " select="('col-lg-9', /*/@outputclass)"/>-->
    <xsl:attribute name="class" select="/*/@outputclass"/>
    <xsl:attribute name="role">main</xsl:attribute>
  </xsl:attribute-set>

  <xsl:attribute-set name="toc">
<!--    <xsl:attribute name="class">col-lg-3</xsl:attribute>-->
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
    <xsl:if test="$values = 'implementation-statement'">
      <span>
        <!--      <xsl:variable name="next" select="(following::processing-instruction('sentence'))[1]" as="processing-instruction()?"/>-->
        <!--      <xsl:if test="not($next = 'error-statement')">-->
        <xsl:attribute name="class" select="'implementation-statement'"/>
        <xsl:attribute name="id" select="string-join((ancestor::*[contains(@class, ' topic/topic ')][1]/@id, substring($values[1], 2)), '__')"/>
        <xsl:attribute name="data-id" select="substring($values[starts-with(., '#')][2], 2)"/>
        <!--      </xsl:if>-->
      </span>
    </xsl:if>
  </xsl:template>

  <xsl:template name="place-fig-lbl">
    <xsl:param name="stringName"/>
    <!-- Number of fig/title's including this one -->
    <xsl:variable name="fig-count-actual" select="count(preceding::*[contains(@class, ' topic/fig ')]/*[contains(@class, ' topic/title ')])+1"/>
    <xsl:variable name="ancestorlang">
      <xsl:call-template name="getLowerCaseLang"/>
    </xsl:variable>
    <xsl:choose>
      <!-- title -or- title & desc -->
      <xsl:when test="*[contains(@class, ' topic/title ')]">
        <figcaption>
          <span class="fig--title-label">
            <xsl:choose>      <!-- Hungarian: "1. Figure " -->
              <xsl:when test="$ancestorlang = ('hu', 'hu-hu')">
                <xsl:value-of select="$fig-count-actual"/>
                <xsl:text>. </xsl:text>
                <xsl:call-template name="getVariable">
                  <xsl:with-param name="id" select="if (ancestor::*[contains(@class, ' topic/example ')]) then 'task_example' else 'Figure'"/>
                </xsl:call-template>
                <xsl:text> </xsl:text>
              </xsl:when>
              <xsl:otherwise>
                <xsl:call-template name="getVariable">
                  <xsl:with-param name="id" select="if (ancestor::*[contains(@class, ' topic/example ')]) then 'task_example' else 'Figure'"/>
                </xsl:call-template>
                <xsl:text> </xsl:text>
                <xsl:value-of select="$fig-count-actual"/>
                <xsl:text>. </xsl:text>
              </xsl:otherwise>
            </xsl:choose>
          </span>
          <xsl:apply-templates select="*[contains(@class, ' topic/title ')]" mode="figtitle"/>
          <xsl:if test="*[contains(@class, ' topic/desc ')]">
            <xsl:text>. </xsl:text>
          </xsl:if>
          <xsl:for-each select="*[contains(@class, ' topic/desc ')]">
            <span>
              <xsl:call-template name="commonattributes">
                <xsl:with-param name="default-output-class" select="'figdesc'"/>
              </xsl:call-template>
              <xsl:apply-templates select="." mode="figdesc"/>
            </span>
          </xsl:for-each>
        </figcaption>
      </xsl:when>
      <!-- desc -->
      <xsl:when test="*[contains(@class, ' topic/desc ')]">
        <xsl:for-each select="*[contains(@class, ' topic/desc ')]">
          <figcaption>
            <xsl:call-template name="commonattributes"/>
            <xsl:apply-templates select="." mode="figdesc"/>
          </figcaption>
        </xsl:for-each>
      </xsl:when>
    </xsl:choose>
  </xsl:template>

  <xsl:template match="*" mode="process.note.common-processing">
    <xsl:param name="type" select="@type"/>
    <xsl:param name="title">
      <xsl:call-template name="getVariable">
        <xsl:with-param name="id" select="concat(upper-case(substring($type, 1, 1)), substring($type, 2))"/>
      </xsl:call-template>
    </xsl:param>
    <div>
      <xsl:call-template name="commonattributes">
        <xsl:with-param name="default-output-class" select="string-join(($type, concat('note_', $type)), ' ')"/>
      </xsl:call-template>
      <xsl:call-template name="setidaname"/>
      <!-- Normal flags go around the entire note (including before the generated title) -->
      <xsl:apply-templates select="*[contains(@class, ' ditaot-d/ditaval-startprop ')]/prop" mode="ditaval-outputflag"/>
      <span class="note__title">
        <xsl:copy-of select="$title"/>
        <span class="non-normative-label">
          <xsl:text> (</xsl:text>
          <xsl:text>non-normative</xsl:text>
          <xsl:text>)</xsl:text>
        </span>
        <xsl:call-template name="getVariable">
          <xsl:with-param name="id" select="'ColonSymbol'"/>
        </xsl:call-template>
      </span>
      <xsl:text> </xsl:text>
      <div class="note__body">
        <!-- Revision flags go around only the content -->
        <xsl:apply-templates select="*[contains(@class, ' ditaot-d/ditaval-startprop ')]/revprop" mode="ditaval-outputflag"/>
        <xsl:apply-templates/>
        <xsl:apply-templates select="*[contains(@class, ' ditaot-d/ditaval-endprop ')]/revprop" mode="ditaval-outputflag"/>
      </div>
      <xsl:apply-templates select="*[contains(@class, ' ditaot-d/ditaval-endprop ')]/prop" mode="ditaval-outputflag"/>
    </div>
  </xsl:template>

  <xsl:template match="*[contains(@class, ' topic/example ')]" name="topic.example">
    <div>
      <xsl:call-template name="commonattributes"/>
      <xsl:call-template name="gen-toc-id"/>
      <xsl:call-template name="setidaname"/>
      <xsl:apply-templates select="*[contains(@class, ' ditaot-d/ditaval-startprop ')]" mode="out-of-line"/>
      <xsl:apply-templates select="." mode="dita2html:section-heading"/>
      <xsl:call-template name="non-normative-label"/>
      <xsl:apply-templates select="*[not(contains(@class, ' topic/title '))] | text() | comment() | processing-instruction()"/>
      <xsl:apply-templates select="*[contains(@class, ' ditaot-d/ditaval-endprop ')]" mode="out-of-line"/>
    </div>
  </xsl:template>

</xsl:stylesheet>
