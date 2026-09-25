---
author: OASIS DITA Technical Committee
---

# DITA processing

DITA markup includes many features that require some form of processing, such as content reuse and conditional processing. The markup itself also contains implicit information that can be derived by processors to support additional features, such as automated linking and navigation. This section lays out the rules for these and other DITA features.

-   **[Navigation](../../archSpec/base/navigation.md)**  
DITA includes markup that processors can use to generate reader navigation to or across DITA topics. Such navigation behaviors include table of contents \(TOCs\) and indexes.
-   **[Indexes](../../archSpec/base/indexes.md)**  
Processors can generate indexes from the content of indexing elements.
-   **[Content reference \(conref\)](../../archSpec/base/conref.md)**  
The DITA conref attributes are mechanisms that enable effective content reuse. DITA content references support complex reuse scenarios that are otherwise challenging or impossible to achieve. In addition, DITA content references have rules to ensure that the content is valid DITA after the content reference has been resolved.
-   **[Conditional processing](../../archSpec/base/condproc.md)**  
Conditional processing is the filtering or flagging of information based on processing-time criteria. Conditional processing is based on attributes specified in the DITA source.
-   **[Metadata cascading](../../archSpec/base/map-cascading.md)**  
Metadata cascading is the process by which metadata elements and attributes specified for a map or for a topic reference cascade to nested references. This allows metadata properties to be set once and apply to an entire map or branch of a map.
-   **[Chunking](../../archSpec/base/chunking.md)**  
Content often needs to be delivered in a different granularity than it is authored. The `@chunk` attribute enables map authors to specify that multiple source documents should be combined into a single document for delivery or that a single source document should be split into multiple documents for delivery.
-   **[Branch filtering](../../archSpec/base/branch-filtering.md)**  
The branch filtering mechanism enables map authors to set filtering conditions for specific branches of a map. This makes it possible for multiple conditional-processing profiles to be applied within a single publication.
-   **[Sorting](../../archSpec/base/sort-as-processing.md)**  
Processors can be configured to sort elements. Typical processing includes sorting glossary entries, index entries, list items, and tables based on the contents of cells in specific columns or rows.
-   **[Determining effective attribute values](../../archSpec/base/determining-effective-attribute-values.md)**  
This topic defines the precedence rules for determining the effective value of an attribute.

