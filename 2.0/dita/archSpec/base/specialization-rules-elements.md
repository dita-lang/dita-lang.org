---
author: OASIS DITA Technical Committee
---

# Specialization rules for element types

There are certain rules that apply to element type specializations.

-   **Characteristics**

    A specialized element type has the following characteristics:

    -   It has a properly-formed `@class` attribute that specifies the specialization hierarchy of the element
    -   It has a content model that is the same or less inclusive than that of the element from which it was specialized. When using expansion modules to add a new element to a content model, the generalized form of any new element is also allowed in the original content model.
    -   It has a set of attributes that are the same or a subset of those of the element from which it was specialized, except for specializations of `@base` or `@props`
    -   The values or value ranges for each attribute are the same or a subset of those attributes on the element from which it was specialized.
-   **Namespaces**

    DITA elements are never in a namespace. Only the `@DITAArchVersion` attribute is in a DITA-defined namespace. All other attributes, except for those defined by the XML standard, are in no namespace.

    This limitation is imposed by the details of the `@class` attribute syntax, which makes it impractical to have namespace-qualified names for either vocabulary modules or individual element types or attributes. Elements included as descendants of the DITA `<foreign>` element type can be in any namespace.


**Note:** Domain modules that are intended for wide use should define element type names that are unlikely to conflict with names used in other domains, for example, by using a domain-specific prefix on all names.

**Draft comment:**Kristen J Eberlein 31 August 2022  


We should consider moving the above note elsewhere.

**Draft comment:**robander   
TO RESOLVE 13 May 2026: At this point, I'd be fine leaving it here, but maybe change the use of "should", like "When domain modules are intended for wide use, it is a good idea to reduce conflicts with other domains by giving elements very specific names or using domain-specific prefixes on all names.

**Parent topic:**[Specialization](../../archSpec/base/specialization.md)

