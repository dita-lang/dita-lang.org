---
author: OASIS DITA Technical Committee
---

# Processing `chunk="combine"`

The presence of `chunk="combine"` instructs a processor to combine the referenced source documents for rendering purposes.

The following rules apply:

-   When `chunk="combine"` is specified on the root element of a map, all source DITA documents that are referenced by the map are treated as one DITA document.
-   When `chunk="combine"` is specified on a branch of a map, all source DITA documents that are referenced within that branch are treated as one DITA document.

    **Note:** This is true regardless of whether the element that specifies `@chunk` refers to a topic or specifies a heading. In cases such as `<topicgroup>` where a grouping element specifies `chunk="combine"`, the equivalent DITA document would be a single DITA document with a root element that groups peer topics.

-   When `chunk="combine"` is specified on a map, map branch, or map reference, all source DITA documents that are grouped by the reference are treated as a single resource. Any additional `@chunk` attributes on elements within the grouping are ignored.

**Parent topic:**[Chunking](../../archSpec/base/chunking.md)

