---
author: OASIS DITA Technical Committee
---

# Processing key references for navigation links and images

Keys can be used to create or redirect links and cross references. Keys also can be used to address resources such as images or videos. This topic explains how to evaluate key references on links and cross references to determine a link target.

When a key definition is bound to a resource that is addressed by the `@href` or `@keyref` attributes, and does not specify "none" for the `@linking` attribute, all references to that key definition become links to the bound resource. When a key definition is not bound to a resource or specifies "none" for the `@linking` attribute, references to that key definition do not become links.

When a key definition has no `@href` value and no `@keyref` value, references to that key will not result in a link, even if they do contain an `@href` attribute of their own. If the key definition also does not contain a `<topicmeta>` subelement, empty elements that refer to the key \(such as `<link keyref="a"/>` or `<xref keyref="a" href="fallback.dita"/>`\) are ignored.

The `<object>` element has an additional key-referencing attribute named `@datakeyref`. Key names in this attribute are resolved using the same processing that is described for the normal `@keyref` attribute.

**Parent topic:**[Indirect key-based addressing](../../archSpec/base/key-based-addressing.md)

