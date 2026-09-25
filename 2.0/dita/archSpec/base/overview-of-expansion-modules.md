---
author: OASIS DITA Technical Committee
---

# Overview of expansion modules

Expansion modules enable information architects to include specialized attributes or elements in specific element types, without making the specialized attributes or elements globally available.

An expansion module works in conjunction with an element or attribute specialization. An expansion module can perform the following functions:

-   **Expand content models**

    Expansion modules can work in conjunction with element-specialization modules to extend the content models of specific elements. When an element-specialization module is combined with an extension module, the specialized elements can be made available *only* in specific contexts, rather than wherever the specialization bases are allowed.

    exampleFor example, a DITA architect creates a new element-domain specialization that declares a new element specialized from `<p>`: `<sectionDesc>`. Using an extension module, the DITA architect can make `<sectionDesc>` available *only* as an optional child of `<section>`, rather than wherever `<p>` is permitted.

-   **Expand attribute lists**

    Expansion modules extend the attribute lists of specific elements by adding attributes specialized from either `@base` or `@props`.

    exampleFor example, an expansion for `<entry>`, `<row>`, and `<colspec>` can make `@cellPurpose` available only on those elements. The `@cellPurpose` attribute is specialized from `@base`.

    The additional attribute can be either defined directly within the expansion module, or it can be defined in a separate attribute-specialization module. In either case, the token used as a value for the `@specializations` attribute must be defined.


**Parent topic:**[Expansion modules](../../archSpec/base/expansion-modules.md)

