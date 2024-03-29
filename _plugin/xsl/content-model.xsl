<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:xs="http://www.w3.org/2001/XMLSchema"
  exclude-result-prefixes="xs dita a x" xmlns:dita="http://dita.oasis-open.org/architecture/2005/"
  xmlns:a="http://relaxng.org/ns/compatibility/annotations/1.0" xmlns:x="x"
  xpath-default-namespace="http://relaxng.org/ns/structure/1.0" version="3.0">

  <xsl:import href="schema.xsl"/>

  <xsl:strip-space elements="*"/>

  <xsl:output indent="yes" doctype-public="-//OASIS//DTD DITA Topic//EN" doctype-system="topic.dtd"/>

  <xsl:param name="element-prefix" as="xs:string" select="''"/>
  <xsl:param name="schema" as="xs:string"/>

  <xsl:variable name="root" select="."/>

  <xsl:template match="/">
    <topic id="content-models">
      <title>Generated content models</title>
      <body>
        <!--xsl:variable name="sections" as="element()*"-->
        <!--xsl:for-each select="tokenize($schemas, ':')"-->
        <!--xsl:variable name="schema" select="."/-->
        <xsl:variable name="simplified" select="x:simplify(.)" as="document-node()"/>
        <xsl:variable name="base" select="tokenize(tokenize($schema, '/')[last()], '\.')[1]"/>
        <xsl:result-document href="{$base}.ditamap" doctype-public="-//OASIS//DTD DITA Map//EN"
          doctype-system="map.dtd" indent="yes">
          <map>
            <xsl:for-each select="$simplified/grammar/define[ends-with(@name, $element-suffix)]">
              <keydef keys="content-models-{tokenize(@name, '\.')[1]}"
                href="{tokenize($base, '/')[last()]}.dita#content-models"/>
              <!--/{@name}-->
            </xsl:for-each>
          </map>
        </xsl:result-document>
        <xsl:apply-templates select="$simplified/grammar"/>
        <!--/xsl:for-each-->
        <!--
        </xsl:variable>
        <xsl:for-each-group select="$sections" group-by="@id">
          <xsl:copy-of select="current-group()[1]"/>
        </xsl:for-each-group>
        -->
      </body>
    </topic>
  </xsl:template>

  <xsl:template match="grammar">
    <xsl:for-each select="define[ends-with(@name, $element-suffix)]">
      <!--
      <xsl:comment>
        <xsl:value-of select="element/@dita:longName"/>
      </xsl:comment>
      -->
      <section id="{@name}">
        <title>
          <xsl:text>Content model</xsl:text>
        </title>
        <p outputclass="content-model">
          <xsl:for-each select="element">
            <xsl:if test="empty(*)">
              <xsl:text>EMPTY</xsl:text>
            </xsl:if>
            <xsl:for-each select="*">
              <xsl:if test="position() ne 1">, </xsl:if>
              <xsl:apply-templates select="."/>
            </xsl:for-each>
          </xsl:for-each>
        </p>
        <p outputclass="content-model-prose">
          <xsl:for-each select="element">
            <xsl:choose>
              <xsl:when test="empty(*)">
                <xsl:text>Empty</xsl:text>
              </xsl:when>
              <xsl:when test="count(*) eq 1">
                <xsl:apply-templates mode="prose"/>
              </xsl:when>
              <xsl:otherwise>
                <xsl:text>In order</xsl:text>
                <ol>
                  <xsl:for-each select="*">
                    <li>
                      <xsl:apply-templates select="." mode="prose"/>
                    </li>
                  </xsl:for-each>
                </ol>
              </xsl:otherwise>
            </xsl:choose>
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
    <xsl:apply-templates/>
    <!--xsl:for-each select="*">
      <xsl:if test="position() ne 1">, </xsl:if>
      <xsl:apply-templates select="."/>
    </xsl:for-each-->
    <xsl:if test="count(*) gt 1">)</xsl:if>
    <xsl:text>*</xsl:text>
  </xsl:template>

  <xsl:template match="oneOrMore">
    <xsl:if test="count(*) gt 1">(</xsl:if>
    <xsl:apply-templates/>
    <!--xsl:for-each select="*">
      <xsl:if test="position() ne 1">, </xsl:if>
      <xsl:apply-templates select="."/>
    </xsl:for-each-->
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
    <xsl:if test="count(*) gt 1">(</xsl:if>
    <xsl:for-each select="*">
      <xsl:if test="position() ne 1"> | </xsl:if>
      <xsl:apply-templates select="."/>
    </xsl:for-each>
    <xsl:if test="count(*) gt 1">)</xsl:if>
  </xsl:template>

  <xsl:template match="text">
    <xsl:text>Text</xsl:text>
  </xsl:template>

  <xsl:template match="any">
    <xsl:text>Any</xsl:text>
  </xsl:template>


  <xsl:template match="element">
    <xref keyref="elements-{@name}"><!-- href="{$element-prefix}{@name}.dita"-->
      <xmlelement>
        <xsl:value-of select="@name"/>
      </xmlelement>
    </xref>
  </xsl:template>

  <xsl:template match="@* | node()">
    <xsl:apply-templates/>
  </xsl:template>

  <!-- Prose -->

  <xsl:template match="optional" mode="prose">
    <xsl:text>Optional </xsl:text>
    <xsl:apply-templates mode="#current"/>
  </xsl:template>

  <xsl:template match="zeroOrMore" mode="prose">
    <xsl:text>Zero or more </xsl:text>
    <xsl:apply-templates select="*" mode="#current"/>
  </xsl:template>

  <xsl:template match="oneOrMore" mode="prose">
    <xsl:text>One or more </xsl:text>
    <xsl:apply-templates select="*" mode="#current"/>
  </xsl:template>

  <xsl:template match="group" mode="prose">
    <xsl:if test="empty(parent::optional | parent::zeroOrMore | parent::oneOrMore)">
      <xsl:text>In order</xsl:text>
    </xsl:if>
    <ol>
      <xsl:for-each select="*">
        <li>
          <xsl:apply-templates select="." mode="#current"/>
        </li>
      </xsl:for-each>
    </ol>
  </xsl:template>

  <xsl:template match="choice" mode="prose">
    <xsl:if test="empty(parent::optional | parent::zeroOrMore | parent::oneOrMore)">
      <xsl:text>One of the following</xsl:text>
    </xsl:if>
    <ul>
      <xsl:for-each select="*">
        <xsl:sort select="exists(self::text)" order="descending"/>
        <xsl:sort select="self::element/@name
                        | self::optional/child::element/@name
                        | self::zeroOrMore/child::element/@name
                        | self::oneOrMore/child::element/@name"/>
        <li>
          <xsl:apply-templates select="." mode="#current"/>
        </li>
      </xsl:for-each>
    </ul>
  </xsl:template>

  <xsl:template match="text" mode="prose">
    <xsl:text>Text</xsl:text>
  </xsl:template>

  <xsl:template match="any" mode="prose">
    <xsl:text>Any content</xsl:text>
  </xsl:template>

  <xsl:template match="element" mode="prose">
    <xref keyref="elements-{@name}"><!--href="{$element-prefix}{@name}.dita"-->
      <xmlelement>
        <xsl:value-of select="@name"/>
      </xmlelement>
    </xref>
  </xsl:template>

  <xsl:template match="@* | node()" mode="prose" priority="-1"/>

</xsl:stylesheet>
