---
author: OASIS DITA Technical Committee
---

# Index locators

An `<indexterm>` element binds the content of the element, typically a term, to a specific location in a document.

The nesting of `<indexterm>` elements and the presence of `<index-see>` elements determines whether locators are rendered in generated indexes:

-   An `<indexterm>` element that does not contain child `<indexterm>` elements \(or an `<index-see>` element\) contributes a locator to the generated index entry.
-   An `<indexterm>` element that contains child `<indexterm>` elements contributes to the hierarchy of the multilevel index entry that is generated. Only a leaf `<indexterm>` element contributes a locator to the generated index entry. A leaf `<indexterm>` element is an `<indexterm>` element that does not contain any other `<indexterm>` elements.
-   If an `<indexterm>` element also contains one or more `<index-see>` elements, no locator is included in the generated index entry.
-   If an `<indexterm>` element also contains one or more `<index-see-also>` elements, the `<indexterm>` element contributes a locator to the generated index entry, and `<index-see-also>` element provides only a redirection.

**Parent topic:**[Indexes](../../archSpec/base/indexes.md)

