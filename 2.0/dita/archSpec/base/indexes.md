---
author: OASIS DITA Technical Committee
---

# Indexes

Processors can generate indexes from the content of indexing elements.

-   **[Index overview](../../archSpec/base/index-overview.md)**  
DITA provides several elements to enable indexing. Whether and how an index is rendered will vary based on implementation decisions and rendering formats.
-   **[Index elements](../../archSpec/base/index-elements.md)**  
The contents of `<indexterm>` elements provides the text for the entries in an index. `<indexterm>` elements can be nested to create additional levels of indexing, such as secondary and tertiary index entries.
-   **[Location of indexterm elements](../../archSpec/base/location-of-indexterm-elements.md)**  
`<indexterm>` elements can occur in topic prologs, anywhere else in DITA topics, and in DITA maps.
-   **[Index locators](../../archSpec/base/index-page-references.md)**  
An `<indexterm>` element binds the content of the element, typically a term, to a specific location in a document.
-   **[Index redirection](../../archSpec/base/index-redirection.md)**  
The `<index-see>` and `<index-see-also>` elements enable redirection to other index entries within a generated index.
-   **[Index ranges](../../archSpec/base/index-ranges.md)**  
Authors can use the `@start` and `@end` attributes on a pair of `<indexterm>` elements to index an extended discussion. The generated index entry reflects the span between the two `<indexterm>` elements.
-   **[Index sorting](../../archSpec/base/index-sorting.md)**  
 The combination of an `<indexterm>` and a `<sort-as>` element specifies a sort phrase under which an index entry is grouped or sorted.
-   **[Examples of indexing](../../archSpec/base/examples-indexing.md)**  
This section contains examples and scenarios that illustrate the use and processing of indexing elements.

**Parent topic:**[DITA processing](../../archSpec/base/ditaprocessing.md)

