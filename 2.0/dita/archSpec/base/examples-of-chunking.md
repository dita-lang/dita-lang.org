---
author: OASIS DITA Technical Committee
---

# Examples of the `@chunk` attribute

These examples illustrate the processing expectations for various scenarios that involve the `@chunk` attribute. The processing examples use either before and after sample markup or expanded syntax that shows the equivalent markup without the `@chunk` attribute.

**Note:** The examples use sample files with modified file names to help illustrate the equivalent before and after resolution of `@chunk` attributes. However, there is no requirement for implementations processing the `@chunk` attribute to generate files, as long as the rendered result is split or combined as described. If generating files, the file names are implementation dependent.

-   **[Example: Using chunk to combine all documents into one](../../archSpec/base/example-chunk-combine-all.md)**  
When a processor would typically render each topic document as an independent result document, the `@chunk` attribute can be used to render all content as a single result document.
-   **[Example: Using chunk to render a single document from one or more branches](../../archSpec/base/example-chunk-combine-branch.md)**  
When a publishing system typically would render each topic document as an independent result document, the `@chunk` attribute can be used to render individual branches of a map as single documents.
-   **[Example: Using chunk to combine groups of topics](../../archSpec/base/example-chunk-combine-group.md)**  
The `@chunk` attribute can be used on grouping elements to combine multiple source documents into one result document.
-   **[Example: How chunk="combine" effects the map hierarchy](../../archSpec/base/example-chunk-combine-nested-topics.md)**  
Special attention is necessary when combining a nested map hierarchy that includes documents with their own nested topics.
-   **[Example: Using chunk to split documents](../../archSpec/base/example-chunk-split.md)**  
When topics are authored or generated in a single DITA document, specifying`chunk="split"` instructs processors to render them individually when possible.
-   **[Example: How chunk="split" affects the map hierarchy](../../archSpec/base/example-chunk-split-nested.md)**  
Special attention is necessary when evaluating the map hierarchy that results from splitting documents that contain nested topics.
-   **[Example: When chunk is ignored](../../archSpec/base/example-chunk-ignored.md)**  
The `@chunk` attribute is ignored in some cases, such as when `chunk="combine"` is already in effect or when `chunk="split"` is specified on a grouping element.
-   **[Example: Using chunk="combine" when the root map specifies chunk="split"](../../archSpec/base/example-chunk-combine-within-split.md)**  
While `@chunk` attributes are ignored when `chunk="combine"` is already in effect, it is possible to use `chunk="combine"` when `chunk="split"` is in effect.
-   **[Example: Managing links when chunking](../../archSpec/base/example-chunk-managing-links.md)**  
If a topic is referenced more than once and one of those instances involves chunking, links to that topic might be ambiguous. In most of such cases, using key references to keys that are defined directly on the chunked instance of the topic will give the correct result.

**Parent topic:**[Chunking](../../archSpec/base/chunking.md)

