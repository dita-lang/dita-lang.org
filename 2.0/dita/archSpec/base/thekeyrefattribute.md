---
author: [OASIS DITA Technical Committee, OASIS DITA Technical Committee]
---

# Referencing a key with the `@keyref` attribute

The `@keyref` attribute provides an indirect, late-bound reference to topics, to collections of topics \(ditabase\), to maps, to referenceable portions of maps, to non-DITA documents, to external URIs, or to XML content contained within a key definition topic reference. When the DITA content is processed, the key references are resolved using key definitions from DITA maps.

When used within a DITA map, the `@keyref` attribute can only resolve to topics, to elements within a DITA map, or to non-DITA resources.

When used within a DITA topic, the `@keyref` attribute can resolve to topics, to elements within a DITA topic or map, or to non-DITA resources.

For references to topics, to elements within a map, or to non-DITA resources, the value of the `@keyref` attribute is a key name.

For references to elements within a topic, the value of the `@keyref` attribute is a key name, a slash \("/"\), and the ID of the target element, where the key name must be bound to the topic that contains the target element.

**Parent topic:**[Indirect key-based addressing](../../archSpec/base/key-based-addressing.md)

**Related information**  


[Indirect key-based addressing](../../archSpec/base/key-based-addressing.md)

