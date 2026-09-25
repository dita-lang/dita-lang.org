---
author: [OASIS DITA Technical Committee, OASIS DITA Technical Committee]
---

# Setting key names with the `@keys` attribute

A `@keys` attribute consists of one or more space-separated keys. Map authors define keys using a `<topicref>` or `<topicref>` specialization that contains the `@keys` attribute. Each key definition introduces an identifier for a resource referenced from a map. Keys resolve to the resources given as the `@href` value on the key definition `<topicref>` element, to content contained within the key definition `<topicref>` element, or both.

The `@keys` attribute is defined using the XML type [NMTOKENS](https://www.w3.org/TR/2006/REC-xml11-20060816/#NT-Nmtokens).

When a key is bound to a resource using `@href`, that resource can be a DITA topic, DITA document, or a non-DITA resource. A key cannot resolve to sub-topic elements.

When more than one key name is specified on `@keys`, each key name is bound to the same resource or resources.

**Parent topic:**[Indirect key-based addressing](../../archSpec/base/key-based-addressing.md)

**Related information**  


[Indirect key-based addressing](../../archSpec/base/key-based-addressing.md)

