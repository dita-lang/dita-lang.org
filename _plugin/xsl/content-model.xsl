<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:xs="http://www.w3.org/2001/XMLSchema"
  exclude-result-prefixes="xs dita a x" xmlns:dita="http://dita.oasis-open.org/architecture/2005/"
  xmlns:a="http://relaxng.org/ns/compatibility/annotations/1.0" xmlns:x="x"
  xpath-default-namespace="http://relaxng.org/ns/structure/1.0" version="3.0">

  <xsl:import href="schema.xsl"/>

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
            <xsl:variable name="simplified" select="x:simplify(document($schema, $root))" as="document-node()"/>
            <!--
            <xsl:result-document href="basetopic.ditamap" doctype-public="-//OASIS//DTD DITA Map//EN"
              doctype-system="map.dtd">
              <map>
                <xsl:for-each select="$simplified/grammar/define[ends-with(@name, '.element')]">
                  <keydef keys="{@name}" href="basetopic.dita#basetopic/{@name}"/>
                </xsl:for-each>
              </map>
            </xsl:result-document>
            -->
            <xsl:apply-templates select="$simplified/grammar"/>
          </xsl:for-each>
        </xsl:variable>
        <xsl:for-each-group select="$sections" group-by="@id">
          <xsl:copy-of select="current-group()[1]"/>
        </xsl:for-each-group>
      </body>
    </topic>
  </xsl:template>

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
            <xsl:if test="empty(*)">
              <xsl:text>EMPTY</xsl:text>
            </xsl:if>
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
    <xref keyref="elements-{@name}" href="{@name}.dita">
      <xmlelement>
        <xsl:value-of select="@name"/>
      </xmlelement>
    </xref>
  </xsl:template>

  <xsl:template match="@* | node()">
    <xsl:apply-templates/>
  </xsl:template>

</xsl:stylesheet>
