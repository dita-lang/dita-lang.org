---
author: OASIS DITA Technical Committee
---

# Key terminology

Certain terminology is used to discuss keys.

-   **resource**

    For the purposes of keys and key resolution, one of the following:

    -   An object addressed by URI
    -   Metadata specified on a resource, such as a `@scope` or `@format` attribute
    -   Text or metadata located within a `<topicmeta>` element
-   **key**

    A name for a resource. See [Using keys for addressing](using-keys-for-addressing.md) for more information.

-   **key definition**

    A `<topicref>` element that binds one or more key names to zero or more resources.

-   **key reference**

    An attribute that references a key, such as `@keyref` or `@conkeyref`.

-   **key space**

    A list of key definitions that are used to resolve key references.

-   **effective key definition**

    The definition for a key within a key space that is used to resolve references to that key. A key might have multiple definitions within a key space, but only one of those definitions is effective.

-   **key scope**

    A map or section of a map that defines its own key space and serves as the resolution context for its key references.


**Parent topic:**[DITA terminology, notation, and conventions](../../archSpec/base/dita-terminology.md)

