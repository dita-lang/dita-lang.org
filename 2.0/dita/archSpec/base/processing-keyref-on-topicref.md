---
author: OASIS DITA Technical Committee
---

# Processing key references on `<topicref>` elements

While `<topicref>` elements are used to define keys, they also can reference keys that are defined elsewhere. This topic explains how to evaluate key references on `<topicref>` elements and its specializations.

-   **Determining the effective resource**

    For topic references that use the `@keyref` attribute, the effective resource bound to the `<topicref>` element is determined by resolving all intermediate key references. Each key reference is resolved either to a resource addressed directly by URI reference in an `@href` attribute, or to no resource. Processors MAY impose reasonable limits on the number of intermediate key references that they will resolve. Processors SHOULD support at least three levels of key references.

    **Note:** This rule applies to all topic references, including those that define keys. The effective bound resource for a key definition that uses the `@keyref` attribute cannot be determined until the key space has been constructed.

-   **Combining metadata**

    Content from a key-defining element cascades to the key-referencing element following the rules for combining metadata between maps and other maps and between maps and topics.

    The combined attributes and content cascade from one map to another or from a map to a topic, but this is controlled by existing rules for cascading, which are not affected by the use of key references.


If, in addition to the `@keys` attribute, a key definition specifies a `@keyref` attribute that can be resolved after the key resolution context for the key definition has been determined, the resources bound to the referenced key definition take precedence.

**Parent topic:**[Indirect key-based addressing](../../archSpec/base/key-based-addressing.md)

