---
author: OASIS DITA Technical Committee
---

# Cascading of metadata attributes in a DITA map

Certain attributes cascade throughout a map, which facilitates attribute and metadata management. When attributes cascade, they apply to the elements that are children of the element where the attributes were specified. Cascading applies to a containment hierarchy, as opposed to a specialization hierarchy.

The following attributes cascade when set on the `<map>` element or when set within a map:

-   `@rev`
-   `@props` and any attribute specialized from `@props`, including those integrated by default in the OASIS-provided document-type shells: `@audience`, `@deliveryTarget`, `@platform`, `@product`, `@otherprops`
-   `@linking`, `@toc`, `@search`
-   `@format`, `@scope`, `@type`
-   `@xml:lang`, `@dir`, `@translate`
-   `@processing-role`
-   `@cascade`
-   `@subjectrefs`

Cascading is additive for attributes that accept multiple values, except when `cascade="nomerge"` is specified. For attributes that take a single value, the value that is defined on the closest containing element takes effect.

In a relationship table, metadata can be applied to entire rows or columns, as well as individual cells. The metadata cascade operates differently due to the nature of this tabular structure The cascade is not driven by a strict containment hierarchy because `<relcolspec>` elements do not contain child elements.

The following list illustrates how metadata cascades in a relationship table:

-   `<reltable>`
    -   `<relcolspec>`
        -   `<relrow>`
            -   `<relcell>`
                -   `<topicref>`

-   **[Processing cascading attributes in a map](../../archSpec/base/processing-cascading-attributes-in-a-map.md)**  
Certain rules apply to processors when they process cascading attributes in a map.
-   **[Merging of cascading attributes](../../archSpec/base/merging-of-cascading-attributes.md)**  
The `@cascade` attribute can be used to modify the additive nature of attribute cascading, although it does not turn off cascading altogether. The attribute has two predefined values: merge and nomerge.

**Parent topic:**[Metadata cascading](../../archSpec/base/map-cascading.md)

**Related information**  


[topicmeta](../../langRef/base/topicmeta.md)

