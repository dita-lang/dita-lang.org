---
author: [OASIS DITA Technical Committee, OASIS DITA Technical Committee]
---

# Scoping keys with the `@keyscope` attribute

Key scopes enable map authors to specify different sets of key definitions for different map branches.

The `@keyscope` attribute consists of one or more space-separated key scope names. The legal characters for a key scope name are the same as those for keys.

A key scope is defined by a `<map>` or `<topicref>` element that specifies the `@keyscope` attribute. Such elements, their contents, and any locally-scoped content referenced from within the element, are considered to be part of the scope. Keys defined within a scope are only directly referenceable from within the same scope. They can be referenced from the parent scope using the scope's name, followed by a period, followed by the key name.

All key scopes are contiguous and non-intersecting. Within a root map, two distinct key scopes with the same name have no relationship with each other aside from that implied by their relative locations in the key scope hierarchy. They do not, for example, share key definitions. The only processing impact of a key scope's names is in defining the prefixes used when contributing qualified key names to the parent scope.

A key scope includes the following components:

-   The scope-defining element
-   The elements that are contained by the scope-defining element, minus the elements that are contained by child key scopes
-   The elements that are referenced by the scope-defining element or its descendants, minus the elements that are contained by child key scopes

If the `@keyscope` attribute is specified on both a reference to a DITA map and the root element of the referenced map, only one scope is created; the submap does not create another level of scope hierarchy. The single key scope that results from this scenario has multiple names; its names are the union of the values of the `@keyscope` attribute on the map reference and the root element of the submap. This means that processors can resolve references to both the key scopes specified on the map reference and the key scopes specified on the root element of the submap.

The root element of a root map always defines a key scope, regardless of whether a `@keyscope` attribute is present. All key definitions and key references exist within a key scope, even if it is an unnamed, implicit key scope that is defined by the root element in the root map.

Each key scope has its own key space that is used to resolve the key references that occur within the scope. The key space that is associated with a key scope includes all of the key definitions within the key scope. This means that different key scopes can have different effective key definitions:

-   A given key can be defined in one scope, but not another.
-   A given key also can be defined differently in different key scopes.

Key references in each key scope are resolved using the effective key definition that is specified within its own key scope.

**Parent topic:**[Indirect key-based addressing](../../archSpec/base/key-based-addressing.md)

