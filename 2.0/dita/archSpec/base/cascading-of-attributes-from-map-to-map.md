---
author: OASIS DITA Technical Committee
---

# Cascading of attributes from map to map

Certain attributes cascade from map to map.

The following attributes cascade from map to map:

-   `@rev`
-   `@props` and any attribute specialized from `@props`, including those integrated by default in the OASIS-provided document-type shells: `@audience`, `@deliveryTarget`, `@platform`, `@product`, `@otherprops`
-   `@linking`, `@toc`, `@search`
-   `@type`
-   `@translate`
-   `@processing-role`
-   `@cascade`
-   `@subjectrefs`

As with values that cascade within a map, the cascading is additive if the attribute permits multiple values,such as `@audience`. For attributes that take a single value, the value that is defined on the closest containing element takes effect.

The following attributes do not cascade from map to map

-   **`@format`**

    The `@format` attribute is set to ditamap when a map or map branch is referenced, so it cannot cascade through to the referenced map.

-   **`@scope`**

    The value of the `@scope` attribute describes the map itself, rather than the content. For example, when the `@scope` attribute is set to external, it indicates that the referenced map itself is external and unavailable, so the value cannot cascade into that referenced map.

-   **`@xml:lang` and `@dir`**

    Cascading behavior for `@xml:lang` is defined in [The xml:lang attribute](xmllang.md). The `@dir` attribute follows the same rules as `@xml:lang`.


While the `@class` attribute is unique and does not cascade, the value of the attribute is used to determine the processing roles that cascade from map to map. See [Cascading of roles from map to map](cascading-of-roles-in-specialized-maps.md) for more information.

**Parent topic:**[Map-to-map cascading behaviors](../../archSpec/base/map-to-map-cascading-of-metadata.md)

