---
author: [OASIS DITA Technical Committee, OASIS DITA Technical Committee]
---

# Common attributes

This topic defines the common attributes used in LwDITA that are not listed in an attribute group.

**Draft comment:**Kristen J Eberlein 26 September 2022  


These brief definitions have not been edited or reviewed for DITA 2.0

-   **`@keys`**

    Specifies one or more names for a resource.

-   **`@keyref`**

    Specifies a key name that acts as a redirectable reference based on a key definition within a map.

    For HDITA, the equivalent of `@keyref` is `@data-keyref`

    **Draft comment:**robander   
    The definiton above for @keyref should be synchronized with the definition in the linked section on keys.

-   **`@processing-role`**

    Specifies whether the referenced resource is processed normally or treated as a resource that is only included in order to resolve references, such as key or content references. The following values are valid:

    -   **normal**

        Indicates that the resource is a readable part of the information set. It is included in navigation and search results. This is the default value for the `<topicref>` element.

    -   **resource-only**

        Indicates that the resource should be used only for processing purposes. It is not included in navigation or search results, nor is it rendered as a topic. This is the default value for the `<keydef>` element.

    If no value is specified but the attribute is specified on a containing element within a map or within the related-links section, the value cascades from the closest containing element.

    For HDITA, the equivalent of `@processing-role` is `@data-processing-role`.

-   **`@props`**

    Specifies metadata about the element. New attributes can be specialized from the `@props` attribute. This attribute supports conditional processing. If no value is specified but the attribute is specified on a containing element within a map or within the related-links section, the value cascades from the closest containing element.

    The `@props` attribute takes a space-delimited set of values.

    For HDITA, the equivalent of `@props` is `@data-props`


**Parent topic:**[Attributes](../../../../attributes/attributes.md)

