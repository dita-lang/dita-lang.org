---
author: [OASIS DITA Technical Committee, OASIS DITA Technical Committee]
---

# Indirect key-based content reuse

The `@conkeyref` attribute provides an indirect content reference to topic elements, map elements, or elements within maps or topics. It allows the referencing element to use a key in place of a URI reference when referencing another topic or map.

When the target of a content reference is a topic or map, the value of the `@conkeyref` attribute is a key name that directly resolves to that topic or map.

When the target of a content reference is an element within a topic or map, the value of the `@conkeyref` attribute is a key name, followed by a slash \("/"\), followed by the ID of the referenced element. The key name must be bound to the topic or map that contains the referenced element.

When the key name specified by the `@conkeyref` attribute is not defined and the element also specifies a `@conref` attribute, the `@conref` attribute is used to determine the referenced element. If no `@conref` attribute is specified there is no content reference relationship.

The `@conrefend` attribute, which defines the end of a conref range, cannot include a key. Instead the map or topic element addressed by the key name component of the `@conkeyref` is used in place of whatever map or topic element is addressed by the `@conrefend` attribute. See [Using conrefend together with conkeyref](theconrefendattribute.md#conkeyref) for more information and for examples of this behavior.

**Parent topic:**[Content reference \(conref\)](../../archSpec/base/conref.md)

**Related information**  


[Example: conref redirection](../../archSpec/base/example-keys-conref-redirection.md)

