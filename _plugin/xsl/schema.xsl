<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:xs="http://www.w3.org/2001/XMLSchema"
  exclude-result-prefixes="xs dita a x" xmlns:dita="http://dita.oasis-open.org/architecture/2005/"
  xmlns:a="http://relaxng.org/ns/compatibility/annotations/1.0" xmlns:x="x"
  xpath-default-namespace="http://relaxng.org/ns/structure/1.0" version="3.0">

  <xsl:strip-space elements="*"/>

  <xsl:output indent="no"/>

  <xsl:param name="element-suffix" as="xs:string" select="'.element'"/>

  <xsl:template match="/">
    <xsl:sequence select="x:simplify(.)"/>
  </xsl:template>

  <xsl:function name="x:merge" as="document-node()">
    <xsl:param name="schema" as="document-node()"/>
    <xsl:variable name="merged" as="document-node()">
      <xsl:document>
        <xsl:apply-templates select="$schema/*" mode="merge"/>
      </xsl:document>
    </xsl:variable>
    <xsl:variable name="resolved" as="document-node()">
      <xsl:document>
        <xsl:apply-templates select="$merged/*" mode="resolve"/>
      </xsl:document>
    </xsl:variable>
    <xsl:sequence select="$merged"/>
  </xsl:function>

  <xsl:function name="x:simplify" as="document-node()">
    <xsl:param name="schema" as="document-node()"/>
    <xsl:variable name="merged" as="document-node()"
                  select="x:merge($schema)"/>
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
    <xsl:document>
      <xsl:variable name="simplify-functions" as="(function(element()) as xs:boolean)+" select="
          (function ($elem) {
            not(
            exists($elem/self::zeroOrMore/parent::choice/parent::zeroOrMore) or
            exists($elem/self::zeroOrMore/parent::choice/parent::oneOrMore) or
            exists($elem/self::oneOrMore/parent::choice/parent::zeroOrMore) or
            exists($elem/self::oneOrMore/parent::choice/parent::oneOrMore)
            )
          },
          function ($elem) {
            not(
            exists($elem/self::choice/parent::choice)
            )
          },
          function ($elem) {
            not(
            exists($elem/self::group/parent::element)
            )
          }
          (:,
          function ($elem) {
            not(
            exists($elem/self::group[count(*) eq 1 and exists(element)])
            )
          },
          function ($elem) {
            not(
            exists($elem/self::optional/parent::optional)
            )
          }
          :)
          )"/>
      <xsl:sequence select="x:chain($cleaned/*, ($simplify-functions, $simplify-functions))"/>
    </xsl:document>
  </xsl:function>

  <xsl:function name="x:chain" as="element()">
    <xsl:param name="root" as="element()"/>
    <xsl:param name="fs" as="(function(element()) as xs:boolean)+"/>
    <xsl:sequence select="
        fold-right($fs, $root, function ($f, $acc) {
          x:apply-filter($acc, $f)
        })"/>
  </xsl:function>

  <xsl:function name="x:apply-filter">
    <xsl:param name="root" as="element()"/>
    <xsl:param name="filter" as="function(element()) as xs:boolean"/>
    <xsl:apply-templates select="$root" mode="filter">
      <xsl:with-param name="filter" tunnel="yes" as="function(element()) as xs:boolean" select="$filter"/>
    </xsl:apply-templates>
  </xsl:function>

  <!-- Merge -->

  <xsl:mode name="merge"/>

  <xsl:template match="@* | node()" mode="merge">
    <xsl:copy>
      <xsl:apply-templates select="@* | node()" mode="#current"/>
    </xsl:copy>
  </xsl:template>

  <xsl:template match="include" mode="merge">
    <xsl:sequence select="*"/>
    <xsl:apply-templates select="document(x:resolve(@href))/grammar/*" mode="#current"/>
  </xsl:template>

  <xsl:template match="div" mode="merge">
    <xsl:apply-templates select="node()" mode="#current"/>
  </xsl:template>

  <xsl:template match="a:documentation | dita:moduleDesc" mode="merge"/>

  <!-- Resolve -->

  <xsl:mode name="resolve"/>

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

  <xsl:template match="ref" mode="resolve">
    <xsl:apply-templates select="." mode="resolve-ref"/>
  </xsl:template>


  <xsl:template match="@* | node()" mode="resolve-ref" priority="-10">
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

  <xsl:template match="ref[@name = 'any']" mode="resolve-ref" priority="10">
    <xsl:element name="any" namespace="http://relaxng.org/ns/structure/1.0"/>
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
        <xsl:variable name="defs" select="key('define', @name)" as="element()*"/>
        <xsl:choose>
          <xsl:when test="count($defs) gt 1 and (every $d in $defs satisfies $d/@combine = 'choice')">
            <xsl:element name="choice" namespace="http://relaxng.org/ns/structure/1.0">
              <xsl:apply-templates select="$defs/*" mode="#current">
                <xsl:with-param name="visited" select="($visited, @name)" as="xs:string*" tunnel="yes"/>
              </xsl:apply-templates>
            </xsl:element>
          </xsl:when>
          <xsl:when test="count($defs) gt 1 and (every $d in $defs satisfies $d/@combine = 'interleave')">
            <xsl:element name="interleave" namespace="http://relaxng.org/ns/structure/1.0">
              <xsl:apply-templates select="$defs/*" mode="#current">
                <xsl:with-param name="visited" select="($visited, @name)" as="xs:string*" tunnel="yes"/>
              </xsl:apply-templates>
            </xsl:element>
          </xsl:when>
          <xsl:otherwise>
            <xsl:apply-templates select="$defs[1]/*" mode="#current">
              <xsl:with-param name="visited" select="($visited, @name)" as="xs:string*" tunnel="yes"/>
            </xsl:apply-templates>
          </xsl:otherwise>
        </xsl:choose>
      </xsl:otherwise>
    </xsl:choose>
  </xsl:template>

  <!-- Clean -->

  <xsl:mode name="clean"/>

  <xsl:template match="@* | node()" mode="clean">
    <xsl:copy>
      <xsl:apply-templates select="@* | node()" mode="#current"/>
    </xsl:copy>
  </xsl:template>

  <xsl:template match="optional | define | empty | choice | interleave" mode="clean">
    <xsl:variable name="contents" as="element()*">
      <xsl:apply-templates select="*" mode="#current"/>
    </xsl:variable>
    <xsl:if test="exists($contents)">
      <xsl:choose>
        <xsl:when test="self::define and count(@*) eq 1 and exists(ancestor::element)">
          <xsl:sequence select="$contents"/>
        </xsl:when>
        <xsl:otherwise>
          <xsl:copy>
            <xsl:apply-templates select="@*" mode="#current"/>
            <xsl:sequence select="$contents"/>
          </xsl:copy>
        </xsl:otherwise>
      </xsl:choose>
    </xsl:if>
  </xsl:template>

  <xsl:template match="grammar/define[not(ends-with(@name, $element-suffix))]" mode="clean"/>

  <!-- Filter -->

  <xsl:mode name="filter"/>

  <xsl:template match="node() | @*" mode="filter">
    <xsl:copy>
      <xsl:apply-templates select="node() | @*" mode="#current"/>
    </xsl:copy>
  </xsl:template>

  <xsl:template match="*" mode="filter" priority="10">
    <xsl:param name="filter" as="function(element()) as xs:boolean" tunnel="yes"/>
    <xsl:choose>
      <xsl:when test="$filter(.)">
        <xsl:copy>
          <xsl:apply-templates select="node() | @*" mode="#current"/>
        </xsl:copy>
      </xsl:when>
      <xsl:otherwise>
        <xsl:apply-templates select="node()" mode="#current"/>
      </xsl:otherwise>
    </xsl:choose>
  </xsl:template>

  <xsl:function name="x:resolve" as="xs:string">
    <xsl:param name="href" as="attribute()"/>
    <xsl:variable name="base" select="base-uri($href)"/>
    <xsl:message select="$base, $href/string()"/>
    <xsl:choose>
      <xsl:when test="matches($href, 'urn:pubid:oasis:names:tc:dita:rng:mapGroupMod.rng:2.0')">
        <xsl:value-of select="resolve-uri(
            replace($href,
            'urn:pubid:oasis:names:tc:dita:rng:mapGroupMod.rng:2.0',
            '../../../../dita/doctypes/rng/base/mapGroupDomain.rng'), $base)"/>
      </xsl:when>
      <xsl:when test="matches($href, 'urn:pubid:oasis:names:tc:dita:rng:hazardDomain.rng:2.0')">
        <xsl:value-of select="resolve-uri(
            replace($href,
            'urn:pubid:oasis:names:tc:dita:rng:hazardDomain.rng:2.0',
            '../../../../dita/doctypes/rng/base/hazardstatementDomain.rng'), $base)"/>
      </xsl:when>
      <xsl:when test="matches($href, 'urn:pubid:oasis:names:tc:dita:rng:(.+):2.0')">
        <xsl:value-of select="resolve-uri(
          replace($href,
          'urn:pubid:oasis:names:tc:dita:rng:(.+):2.0',
          '../../../../dita/doctypes/rng/base/$1'), $base)"/>
      </xsl:when>
      <xsl:otherwise>
        <xsl:value-of select="resolve-uri($href/string(), $base)"/>
      </xsl:otherwise>
    </xsl:choose>
  </xsl:function>

</xsl:stylesheet>
