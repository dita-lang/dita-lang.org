---
author: OASIS DITA Technical Committee
---

# Index elements

The contents of `<indexterm>` elements provides the text for the entries in an index. `<indexterm>` elements can be nested to create additional levels of indexing, such as secondary and tertiary index entries.

The following elements contain information that processors can use to generate indexes:

-   **`<indexterm>`**

    Defines a term that can contribute to an index. Matching values of `@start` and `@end` attributes on `<indexterm>` elements can specify an index range.

-   **`<index-see>`**

    Defines a term to use as a see reference. See references direct a reader to the preferred term.

-   **`<index-see-also>`**

    Defines a term to use as a see also reference. See also references direct a reader to an alternate index entry for additional information.


How the index elements are combined, the location of `<indexterm>` elements, and the hierarchy of the DITA maps all affect how the index elements are processed and the index entries that are generated.

**Parent topic:**[Indexes](../../archSpec/base/indexes.md)

