---
author: OASIS DITA Technical Committee
---

# Core concepts for working with keys

The concepts described below are critical for a full understanding of keys and key processing.

**Note:** The use of the phases "`<map>` element" or "`<topicref>` element" should be interpreted as "`<map>` element and any specialization of `<map>` element " or " `<topicref>` element or any specialization of `<topicref>` element."

When considering keys and key references, it is important to remember that `<keydef>` is included among the `<topicref>` specializations in this specification. The [`<keydef>`](../../langRef/base/keydef.md) element is a convenience element that has a required `@keys` attribute, and provides a default value for the `@processing-role` attribute.

## Definitions related to keys

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


## Key definitions

A key definition binds one or more keys to zero or more resources. Resources can be:

-   Any URI-addressed resource that is referenced directly by the `@href` attribute or indirectly by the `@keyref` attribute on the key definition. References to the key are considered references to the URI-addressed resource.
-   \(If the key definition contains a child `<topicmeta>` element\) The child elements of the `<topicmeta>` element. The content of those elements can be used to populate the content of elements that reference the key.

If a key definition does not contain a `<topicmeta>` element and does not refer to a resource by `@href` or `@keyref`, it is nonetheless a valid key definition. References to the key definition are considered resolvable, but no linking or content transclusion occurs.

## Key scopes

All key definitions and key references exist within a key scope. If a `@keyscope` attribute is never specified within the map hierarchy, all keys exist within a single, default key scope.

Additional key scopes are created when the `@keyscope` attribute is used. The `@keyscope` attribute specifies a name or names for the scope. Within a map hierarchy, key scopes are bounded by the following:

-   The root map.
-   The root element of submaps when the root elements of the submaps specify the `@keyscope` attribute
-   Any `<topicref>` elements that specify the `@keyscope` attribute

## Key spaces

The key space associated with a key scope is used to resolve all key references that occur immediately within that scope. Key references in child scopes are resolved using the key spaces that are associated with those child scopes.

A key scope is associated with exactly one key space. That key space contains all key definitions that are located directly within the scope; it might also contain definitions that exist in other scopes. Specifically, the key space associated with a key scope is comprised of the following key definitions, in order of precedence:

1.  All key definitions from the key space associated with the parent key scope, if any.
2.  Key definitions within the scope-defining element, including those defined in directly-addressed, locally-scoped submaps, but excluding those defined in child scopes. \(Keys defined in child scopes cannot be addressed without qualifiers.\)
3.  The key definitions from child scopes, with each key prepended by the child scope name followed by a period. If a child scope has multiple names, the keys in that scope are addressable from the parent scope using any of the scope names as a prefix.

**Note:** Because of rules 1 and 3, the key space that is associated with a child scope includes the scope-qualified copies of its own keys that are inherited from the key space of the parent scope, as well as those from other "sibling" scopes. Scope-qualified keys are covered in more detail in [Addressing keys across scopes](using-keys-to-address-keys-across-scopes.md).

## Effective key definitions

A key space can contain many definitions for a given key, but only one definition is effective for the purpose of resolving key references.

When a key has a definition in the key space that is inherited from a parent scope, that definition is effective. Otherwise, a key definition is effective if it is first in a breadth-first traversal of the locally-scoped submaps beneath the scope-defining element. Put another way, a key definition is effective if it is the first definition for that key name in the shallowest map that contains that key definition. This allows higher-level map authors to override keys defined in referenced submaps.

**Note:** Because key definitions inherited from a parent scope are effective, the reverse is also true: key definitions in a child key scope will not override key definitions in the parent scope.

**Note:** A key definition that specifies more than one key name in its `@keys` attribute might be the effective definition for some of its keys but not for others.

Within a key scope, keys do not have to be defined before they are referenced. The key space is effective for the entire scope, so the order of key definitions and key references relative to one another is not significant. This has the following implications for processors:

-   All key spaces for a root map must be determined before any key reference processing can be performed.
-   Maps referenced solely by key reference have no bearing on key space contents.

For the purposes of key definition precedence, the scope-qualified key definitions from a child scope are considered to occur at the location of the scope-defining element within the parent scope. exampleSee [Example: How key scopes affect key precedence](example-keys-scope-defining-precedence.md) for more information.

**Parent topic:**[Indirect key-based addressing](../../archSpec/base/key-based-addressing.md)

