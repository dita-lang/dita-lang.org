---
author: OASIS DITA Technical Committee
---

# Example: Apply multiple constraints to a single document-type shell using DTD

You can apply multiple constraints to a single document-type shell. However, there can be only one constraint for a given element or domain.

## Example

Here is a list of constraint modules and what they do:

<table><thead><tr><th align="left" id="d246062e54">

File name

</th><th align="left" id="d246062e57">

What it constrains

</th><th align="left" id="d246062e60">

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

Makes `@id` required

</td></tr><tr><td>

`example-HighlightingDomainConstraint.mod`

</td><td>

Highlighting domain

</td><td>

Reduces the highlighting domain elements to `<b>` and `<i>`

</td></tr><tr><td>

N/A

</td><td>

`<ph>`

</td><td>

Remove the `<ph>` element, allowing only domain extensions \(does not require a `.mod` file\)

</td></tr></tbody>
</table>All of these constraints can be integrated into a single document-type shell for `<topic>`, since they constrain distinct element types and domains. The constraint for the highlighting domain typically is located in the "DOMAIN CONSTRAINT INTEGRATION" section, and it must be integrated before the "DOMAIN ENTITIES" section. The other constraints typically are located in the "ELEMENT-TYPE CONFIGURATION INTEGRATION" section, and the order in which they are listed does not matter.

**Parent topic:**[Examples: Constraints implemented using DTDs](../../archSpec/base/examples-constraints.md)

