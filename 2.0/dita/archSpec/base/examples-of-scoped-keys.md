---
author: OASIS DITA Technical Committee
---

# Examples of scoped keys

This section of the specification contains examples and scenarios. They illustrate how scoped keys can be used.

-   **[Example: Scoped key definitions for variable text](../../archSpec/base/example-scoped-keys-for-variable-text.md)**  
Scoped key definitions can be used for variable text. This enables you to use the same DITA topic multiple times in a DITA map, and in each instance the variable text can resolve differently.
-   **[Example: References to scoped keys](../../archSpec/base/example-scoped-key-references.md)**  
You can address scoped keys from outside the key scope in which the keys are defined.
-   **[Example: Key definitions in nested key scopes](../../archSpec/base/example-nested-key-scopes.md)**  
In this scenario, the root map contains nested key scopes, each of which contain duplicate key definitions. The effective key definition depends on key-scope precedence rules.
-   **[Example: Key scopes specified on both the map reference and the root element of the submap](../../archSpec/base/example-keyscope-on-mapref-and-submap.md)**  
In this scenario, a key scope is defined both on a reference to a nested map, and on the root element of that nested map.
-   **[Example: Key scopes and omnibus publications](../../archSpec/base/example-key-scopes-omnibus-publications.md)**  
Key scopes enable you to create omnibus publications that include multiple submaps that define the same key names for common items, such as product names or common topic clusters.
-   **[Example: How key scopes affect key precedence](../../archSpec/base/example-keys-scope-defining-precedence.md)**  
For the purposes of key definition precedence, the scope-qualified key definitions from a child scope are considered to occur at the location of the scope-defining element within the parent scope.
-   **[Example: How key scopes with the same name interact](../../archSpec/base/example-scoped-key-name-conflicts.md)**  
In a large publication it is possible that two sets of content will use the same key scope name. These scopes have no relationship with each other aside from the shared name; key definitions in one are not shared with the other.
-   **[Example: subjectrefs attribute with key scopes](../../archSpec/base/example-subjectrefs-attribute-with-key-scopes.md)**  
A subject scheme map can be included in a map as either a normal sub map or as a peer root map and associated with a key scope on the map reference.
-   **[Example: Key scopes and cross deliverable linking](../../archSpec/base/example-keys-cross-deliverable.md)**  
Scoped references to a peer map can be used to establish cross deliverable links. When a processor has access to they keys in that peer map, it can use that information to set up cross deliverable links.

**Parent topic:**[Indirect key-based addressing](../../archSpec/base/key-based-addressing.md)

