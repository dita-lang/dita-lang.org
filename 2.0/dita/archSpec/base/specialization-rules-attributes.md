---
author: OASIS DITA Technical Committee
---

# Specialization rules for attributes

There are certain rules that apply to attribute specializations.

A specialized attribute has the following characteristics:

-   It is specialized from `@props` or `@base`.
-   It can be integrated into a document-type shell either globally, which makes it available on all elements, or it can be assigned to specific elements by using an expansion module.
-   It does not have values or value ranges that are more extensive than those of the attribute from which it was specialized.
-   Its values must be alphanumeric, space-delimited values.
-   In generalized form, the values must conform to the rules for attribute generalization.

**Parent topic:**[Specialization](../../archSpec/base/specialization.md)

