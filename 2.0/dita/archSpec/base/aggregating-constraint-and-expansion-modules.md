---
author: OASIS DITA Technical Committee
---

# Example: Aggregating constraint and expansion modules using DTDs

The DITA architect wants to add some extension modules to the document-type shell for topic. The document-type shell already integrates a number of constraint modules.

The following table lists the constraints that are currently integrated into the document-type shell:

<table><thead><tr><th align="left" id="d275903e51">

File name

</th><th align="left" id="d275903e54">

What it constrains

</th><th align="left" id="d275903e57">

Details

</th></tr></thead><tbody><tr><td>

`example-TopicConstraint.mod`

</td><td>

`<topic>`

</td><td>

-   Removes `<abstract>`
-   Makes `<shortdesc>` required
-   Removes `<related-links>`
-   Disallows topic nesting

</td></tr><tr><td>

`example-SectionConstraint.mod`

</td><td>

`<section>`

</td><td>

-   Makes `<title>` required
-   Reduces the content model of `<section>` to a smaller subset

</td></tr><tr><td>

`example-HighlightingDomainConstraint.mod`

</td><td>

Highlighting domain

</td><td>

Reduces the highlighting domain elements to `<b>` and `<i>`

</td></tr></tbody>
</table>The following table lists the expansion modules that the DITA architect wants to add to the document-type shell:

|File name|What it modifies|Details|
|---------|----------------|-------|
|`acme-SectionExpansion.mod`|`<section>`|Adds an optional `<sectionDesc>` element to `<section>`.|
|`example-dlentryModeAttExpansion.ent`|`<dlentry>`|Adds `@dlentryMode` to the attributes of `<dlentry>`.|

The constraint and expansion modules that target the `<section>` element must be combined into a single element-configuration module. An element can only be targeted by a single element-configuration module.

**Parent topic:**[Examples: Expansion implemented using DTDs](../../archSpec/base/examples-expansion-implemented-using-dtds.md)

