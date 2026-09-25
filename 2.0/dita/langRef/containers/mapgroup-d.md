---
author: OASIS DITA Technical Committee
---

# Mapgroup domain elements

The mapgroup domain elements define, group, or reference content. Many of the mapgroup elements are convenience elements; they simply provide shortcuts for an author to use existing markup.

For example, the `<topichead>` element enables a map to specify a heading without a reference to a topic. While a `<topicref>` element might accomplish the same thing by creating a title and leaving off the `@href` attribute, the `<topichead>` element makes the intent clearer and prevents the accidental inclusion of an `@href` attribute.

-   **[keydef](../../langRef/base/keydef.md)**  
A key definition provides a simple way to define a key without making the definition itself a part of rendered content.
-   **[mapref](../../langRef/base/mapref.md)**  
A map reference is a mechanism for referencing a DITA map from a DITA map.
-   **[mapresources](../../langRef/base/mapresources.md)**  
Map resources are objects with a `@processing-role` set to resource-only, for example, key definitions and subject scheme maps. Such resources do not contribute to the navigation structure, although they might be essential for authoring and processing.
-   **[topicgroup](../../langRef/base/topicgroup.md)**  
A topic group is a set of topic references that share common attributes and linking relationships.
-   **[topichead](../../langRef/base/topichead.md)**  
A topic head is a title-only entry in a DITA map.

**Parent topic:**[Domain elements](../../langRef/containers/domain-elements.md)

