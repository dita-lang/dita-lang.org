---
author: OASIS DITA Technical Committee
---

# Processing `chunk="split"`

The presence of `chunk="split"` instructs a processor to split each topic from the referenced source document into its own document for rendering purposes.

The following rules apply:

-   When `chunk="split"` is specified on the root element of a map, it sets a default operation for all source DITA documents in the navigation structure of the map. The default `split` value is used except where a `combine` value is encountered, in which case `combine` takes over for that entire branch.
-   When `chunk="split"` is specified on a `<topicref>` element that references a source DITA document, it indicates that all topics within the referenced document should be rendered as individual documents.
-   When `chunk="split"` is specified on an element such as `<topicgroup>` that does not reference a source DITA document or result in published output, the attribute has no meaning.

**Parent topic:**[Chunking](../../archSpec/base/chunking.md)

