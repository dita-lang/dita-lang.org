---
author: OASIS DITA Technical Committee
---

# Example: Aggregating constraint and expansion modules using RNG

The DITA architect wants to add some extension modules to the document-type shell for topic. The document-type shell already integrates a constraint module.

The following table lists the constraint module and the extension modules that the DITA architect wants to integrate into the document-type shell for topic.

<table><thead><tr><th align="left" id="d245307e28">

Type of element configuration

</th><th align="left" id="d245307e31">

File name

</th><th align="left" id="d245307e34">

What it does

</th></tr></thead><tbody><tr><td>

Constraint

</td><td>

`topicSectionConstraint.rng`

</td><td>

Constrains `<topic>`:

 -   Removes `<abstract>`
-   Makes `<shortdesc>` required
-   Removes `<related-links>`
-   Disallows topic nesting

 Constrains `<section>`:

 -   Makes `@id` required

</td></tr><tr><td>

Expansion

</td><td>

`sectionExpansionMod.rng`

</td><td>

Adds `<sectionDesc>` to the content model of `<section>`

</td></tr><tr><td>

Expansion

</td><td>

`tableCellAttExpansion.rng`

</td><td>

Adds `@cellPurpose` to the attribute lists for certain table elements

</td></tr></tbody>
</table>Because all of these element-configuration modules target elements declared in `topicMod.rng`, the DITA architect needs to combine them into a single element-configuration module like the following:

```
<?xml version="1.0" encoding="UTF-8"?>
<?xml-model href="urn:pubid:oasis:names:tc:dita:rng:vocabularyModuleDesc.rng"
                         schematypens="http://relaxng.org/ns/structure/1.0"?>
<grammar xmlns="http://relaxng.org/ns/structure/1.0"
  xmlns:dita="http://dita.oasis-open.org/architecture/2005/"
  xmlns:a="http://relaxng.org/ns/compatibility/annotations/1.0"
  datatypeLibrary="http://www.w3.org/2001/XMLSchema-datatypes">
  <div>
    <a:documentation>CONTENT MODEL AND ATTRIBUTE LIST OVERRIDES</a:documentation>
    <include href="urn:pubid:oasis:names:tc:dita:rng:topicMod.rng:2.0">
      **&lt;!-- Redefines attribute list for section: Makes @id required --&gt;**
      <define name="section.attributes">
        <attribute name="id">
          <data type="ID"/>
        </attribute>
        <ref name="conref-atts"/>
        <ref name="select-atts"/>
        <ref name="localization-atts"/>
        <optional>
          <attribute name="outputclass"/>
        </optional>
      </define>
      **&lt;!-- Adds sectionDesc to the content model of section --&gt;**
      <define name="section.content">
        <optional>
          <ref name="title"/>
        </optional>
        <optional>
          <ref name="sectionDesc"/>
        </optional>
        <zeroOrMore>
          <ref name="section.cnt"/>
        </zeroOrMore>
      </define>
      **&lt;!-- Adds @cellPurpose to certain table and simple table elements --&gt;**
      <define name="colspec.attributes" combine="interleave">
        <optional>
          <attribute name="cellPurpose"/>
        </optional>
      </define>
      <define name="entry.attributes" combine="interleave">
        <optional>
          <attribute name="cellPurpose"/>
        </optional>
      </define>
      <define name="row.attributes" combine="interleave">
        <optional>
          <attribute name="cellPurpose"/>
        </optional>
      </define>
      <define name="stentry.attributes" combine="interleave">
        <optional>
          <attribute name="cellPurpose"/>
        </optional>
      </define>
      <define name="strow.attributes" combine="interleave">
        <optional>
          <attribute name="cellPurpose"/>
        </optional>
      </define>
      **&lt;!-- Redefines topic: removes abstract and related-links; makes shortdesc --&gt;
      &lt;!--                  required; disallows topic nesting                   --&gt;**
      <define name="topic.content">
        <ref name="title"/>
        <ref name="shortdesc"/>
        <optional>
          <ref name="prolog"/>
        </optional>
        <optional>
          <ref name="body"/>
        </optional>
      </define>
    </include>
  </div>
</grammar>

```

When the DITA architect edits the document-type shell to integrate the element configuration module, they also need to do the following:

-   Remove the include statement for `topicMod.rng`
-   Add `<section>` to the "ID-DEFINING ELEMENT OVERRIDES" division

**Parent topic:**[Examples: Expansion implemented using RNG](../../archSpec/base/examples-expansion-implemented-using-rng.md)

