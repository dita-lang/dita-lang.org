<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:xs="http://www.w3.org/2001/XMLSchema"
  exclude-result-prefixes="xs dita a" xmlns:dita="http://dita.oasis-open.org/architecture/2005/"
  xmlns:a="http://relaxng.org/ns/compatibility/annotations/1.0"
  xpath-default-namespace="http://relaxng.org/ns/structure/1.0" version="3.0">

  <xsl:strip-space elements="*"/>

  <xsl:output indent="no" doctype-public="-//OASIS//DTD DITA Topic//EN" doctype-system="topic.dtd"/>

  <xsl:param name="schemas" as="xs:string"/>

  <xsl:variable name="root" select="."/>

  <xsl:template match="/">
    <topic id="content-models">
      <title>Generated content models</title>
      <body>
        <xsl:variable name="sections" as="element()*">
         <xsl:for-each select="tokenize($schemas, ':')">
           <xsl:variable name="schema" select="."/>
          <xsl:variable name="merged" as="document-node()">
            <xsl:document>
              <xsl:apply-templates select="document($schema, $root)/*" mode="merge"/>
            </xsl:document>
          </xsl:variable>
          <xsl:variable name="resolved" as="document-node()">
            <xsl:document>
              <xsl:apply-templates select="$merged/*" mode="resolve"/>
            </xsl:document>
          </xsl:variable>
          <xsl:variable name="cleaned" as="document-node()">
            <xsl:document>
              <xsl:apply-templates select="$resolved/*" mode="clean"/>
            </xsl:document>
          </xsl:variable>
          <!-- 
          <xsl:result-document href="{$schema}_normalized.rng">
            <xsl:copy-of select="$cleaned"/>
          </xsl:result-document>
          -->
          <!--
          <xsl:result-document href="basetopic.ditamap" doctype-public="-//OASIS//DTD DITA Map//EN" doctype-system="map.dtd">
            <map>
              <xsl:for-each select="$cleaned/grammar/define[ends-with(@name, '.element')]">
                <keydef keys="{@name}" href="basetopic.dita#basetopic/{@name}"/>
              </xsl:for-each>
            </map>
          </xsl:result-document>
          -->
          <xsl:apply-templates select="$cleaned/grammar"/>
         </xsl:for-each>
        </xsl:variable>
        <xsl:for-each-group select="$sections" group-by="@id">
          <xsl:copy-of select="current-group()[1]"/>
        </xsl:for-each-group>        
      </body>
    </topic>
  </xsl:template>

  <!-- Merge -->

  <xsl:template match="@* | node()" mode="merge">
    <xsl:copy>
      <xsl:apply-templates select="@* | node()" mode="#current"/>
    </xsl:copy>
  </xsl:template>

  <xsl:template match="include" mode="merge">
    <xsl:apply-templates select="document(@href)/grammar/*" mode="#current"/>
  </xsl:template>

  <xsl:template match="div" mode="merge">
    <xsl:apply-templates select="node()" mode="#current"/>
  </xsl:template>

  <xsl:template match="a:documentation | dita:moduleDesc" mode="merge"/>

  <!-- Resolve -->

  <xsl:key name="define" match="define" use="@name"/>

  <xsl:template match="@* | node()" mode="resolve">
    <xsl:copy>
      <xsl:apply-templates select="@* | node()" mode="#current"/>
    </xsl:copy>
  </xsl:template>
  <!--
  <xsl:template match="define" mode="resolve">
    <xsl:apply-templates/>
  </xsl:template>
  -->

  <xsl:template match="element" mode="resolve">
    <xsl:copy>
      <xsl:apply-templates select="@* | node()" mode="resolve-ref"/>
    </xsl:copy>
  </xsl:template>

  <xsl:template match="@* | node()" mode="resolve-ref">
    <xsl:copy>
      <xsl:apply-templates select="@* | node()" mode="#current"/>
    </xsl:copy>
  </xsl:template>

  <xsl:template match="attribute" mode="resolve-ref"/>

  <xsl:template match="element" mode="resolve-ref">
    <xsl:copy>
      <xsl:apply-templates select="@name" mode="#current"/>
    </xsl:copy>
  </xsl:template>

  <xsl:template match="ref" mode="resolve-ref">
    <xsl:param name="visited" select="()" as="xs:string*" tunnel="yes"/>
    <!--xsl:message select="$visited"></xsl:message-->
    <xsl:choose>
      <xsl:when test="
          some $i in $visited
            satisfies @name = $i">
        <xsl:copy-of select="."/>
      </xsl:when>
      <xsl:otherwise>
        <xsl:apply-templates select="key('define', @name)[1]" mode="#current">
          <xsl:with-param name="visited" select="($visited, @name)" as="xs:string*" tunnel="yes"/>
        </xsl:apply-templates>
      </xsl:otherwise>
    </xsl:choose>
  </xsl:template>

  <!-- Clean -->

  <xsl:template match="@* | node()" mode="clean">
    <xsl:copy>
      <xsl:apply-templates select="@* | node()" mode="#current"/>
    </xsl:copy>
  </xsl:template>

  <xsl:template match="optional | define | empty" mode="clean">
    <xsl:variable name="contents" as="element()*">
      <xsl:apply-templates select="*" mode="clean"/>
    </xsl:variable>
    <xsl:if test="exists($contents)">
      <xsl:choose>
        <xsl:when test="self::define and count(@*) eq 1 and exists(ancestor::element)">
          <xsl:apply-templates select="node()" mode="#current"/>
        </xsl:when>
        <xsl:otherwise>
          <xsl:copy>
            <xsl:apply-templates select="@* | node()" mode="#current"/>
          </xsl:copy>
        </xsl:otherwise>
      </xsl:choose>
    </xsl:if>
  </xsl:template>

  <!-- Generate -->

  <xsl:template match="grammar">
    <xsl:for-each select="define[ends-with(@name, '.element')]">
      <!--
      <xsl:comment>
        <xsl:value-of select="element/@dita:longName"/>
      </xsl:comment>
      -->
      <section id="{@name}">
        <title>
          <xsl:text>Content model</xsl:text>
        </title>
        <p>
          <xsl:for-each select="element">
            <xsl:for-each select="*">
              <xsl:if test="position() ne 1">, </xsl:if>
              <xsl:apply-templates select="."/>
            </xsl:for-each>
          </xsl:for-each>
        </p>
      </section>
    </xsl:for-each>
  </xsl:template>

  <xsl:template match="define">
    <xsl:for-each select="*">
      <xsl:if test="position() ne 1">, </xsl:if>
      <xsl:apply-templates select="."/>
    </xsl:for-each>
  </xsl:template>

  <xsl:template match="optional">
    <xsl:apply-templates/>
    <xsl:text>?</xsl:text>
  </xsl:template>

  <xsl:template match="zeroOrMore">
    <xsl:if test="count(*) gt 1">(</xsl:if>
    <xsl:for-each select="*">
      <xsl:if test="position() ne 1">, </xsl:if>
      <xsl:apply-templates select="."/>
    </xsl:for-each>
    <xsl:if test="count(*) gt 1">)</xsl:if>
    <xsl:text>*</xsl:text>
  </xsl:template>

  <xsl:template match="oneOrMore">
    <xsl:if test="count(*) gt 1">(</xsl:if>
    <xsl:for-each select="*">
      <xsl:if test="position() ne 1">, </xsl:if>
      <xsl:apply-templates select="."/>
    </xsl:for-each>
    <xsl:if test="count(*) gt 1">)</xsl:if>
    <xsl:text>+</xsl:text>
  </xsl:template>

  <xsl:template match="group">
    <xsl:if test="count(*) gt 1">(</xsl:if>
    <xsl:for-each select="*">
      <xsl:if test="position() ne 1">, </xsl:if>
      <xsl:apply-templates select="."/>
    </xsl:for-each>
    <xsl:if test="count(*) gt 1">)</xsl:if>
  </xsl:template>

  <xsl:template match="choice">
    <xsl:if test="count(*) gt 1 and empty(parent::choice)">(</xsl:if>
    <xsl:for-each select="*">
      <xsl:if test="position() ne 1"> | </xsl:if>
      <xsl:apply-templates select="."/>
    </xsl:for-each>
    <xsl:if test="count(*) gt 1 and empty(parent::choice)">)</xsl:if>
  </xsl:template>

  <xsl:template match="text">
    <xsl:text>text</xsl:text>
  </xsl:template>

  <xsl:template match="element">
    <xref keyref="elements-{@name}">
      <xmlelement>
        <xsl:value-of select="@name"/>
      </xmlelement>
    </xref>
  </xsl:template>

  <xsl:template match="@* | node()">
    <xsl:apply-templates/>
  </xsl:template>

</xsl:stylesheet>
