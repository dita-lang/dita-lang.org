---
author: OASIS DITA Technical Committee
---

# About the `@chunk` attribute

The `@chunk` attribute specifies how a processor should split or combine source DITA documents into alternate organizational schemes for rendering purposes. This means that the `@chunk` attribute is only relevant when the organization of source DITA documents has an effect on the organization of published documents.

The `@chunk` attribute only operates on topics and nested topics. It does not operate on other topic content, such as sections.

The `@chunk` attribute is composed of a single token without any white space. DITA defines the following tokens for the `@chunk` attribute:

-   **combine**

    Instructs a processor to combine the referenced source documents for rendering purposes. This is intended for cases where a publishing process normally results in a single output artifact for each source XML document.

-   **split**

    Instructs a processor to split each topic from the referenced source document into its own document for rendering purposes. This is intended for cases where a publishing process normally results in a single output artifact for each source XML document, regardless of how many DITA topics exist within each source document.


Applications can use custom tokens for the `@chunk` attribute.

The `@chunk` attribute does not cascade.

The following rules apply to all values of the `@chunk` attribute:

-   When the source document organization has no effect on published output, such as when producing a single PDF or EPUB, processors MAY ignore the `@chunk` attribute.
-   When the `@chunk` attribute results in more or fewer documents based on the `combine` or `split` tokens, the hierarchy of topics within the resulting map and topic organization SHOULD match the hierarchy in the original topics and maps.
-   When the `@chunk` attribute results in more or fewer documents, processors MAY create their own naming schemes for those reorganized documents.
-   The `@chunk` attribute values apply to DITA topic documents referenced from a map. Processors MAY apply equivalent processing to non-DITA documents.

**Parent topic:**[Chunking](../../archSpec/base/chunking.md)

