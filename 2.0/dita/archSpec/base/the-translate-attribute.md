---
author: OASIS DITA Technical Committee
---

# The `@translate` attribute

The `@translate` attribute provides information about whether the content of an element should be translated.

The following values are valid: yes, no, and -dita-use-conref-target.

A few elements have the `@translate` attribute set by default to no. These elements include `<draft-comment>` and `<required-cleanup>`, all elements that are designed to hold content that is not intended for publication.

The non-normative appendix, [Element-by-element recommendations for translators](../../non-normative/elementsMerged.md), includes information on whether the element is block or inline, whether the element contents are likely to be suitable for translation, and whether the element has attributes whose values might need translation.

**Parent topic:**[Translation and localization](../../archSpec/base/translation.md)

