---
author: OASIS DITA Technical Committee
---

# Content reference \(conref\)

The DITA conref attributes are mechanisms that enable effective content reuse. DITA content references support complex reuse scenarios that are otherwise challenging or impossible to achieve. In addition, DITA content references have rules to ensure that the content is valid DITA after the content reference has been resolved.

-   **[Content referencing overview](../../archSpec/base/conref-overview.md)**  
The DITA `@conref`, `@conkeyref`, `@conrefend`, and `@conaction` attributes provide mechanisms for reusing content within DITA topics or maps. These mechanisms can be used both to pull and push content.
-   **[Direct URI-based content reuse](../../archSpec/base/theconrefattribute.md)**  
The `@conref` attribute is used to reference reusable content by URI. It allows reuse of DITA elements, including topic- or map-based elements.
-   **[Indirect key-based content reuse](../../archSpec/base/theconkeyrefattribute.md)**  
The `@conkeyref` attribute provides an indirect content reference to topic elements, map elements, or elements within maps or topics. It allows the referencing element to use a key in place of a URI reference when referencing another topic or map.
-   **[Reusing a range of elements](../../archSpec/base/theconrefendattribute.md)**  
The `@conrefend` attribute is used in a conref range. A `@conref` or `@conkeyref` attribute references the first element in the range, while `@conrefend` references the last element in the range.
-   **[Pushing reusable content to a new location](../../archSpec/base/theconactionattribute.md)**  
The `@conaction` attribute allows users to push content from one location into another. It causes the `@conref` attribute to work in reverse, so that content is pushed from the referencing element into another location, rather than pulled from another location to replace the referencing element.
-   **[Processing conrefs](../../archSpec/base/conref-processing.md)**  
When processing content references, DITA processors compare the restrictions of each context to ensure that the conrefed content is valid in its new context.
-   **[Processing attributes when resolving conrefs](../../archSpec/base/conref-attributes-specified-on-elements.md)**  
When resolving conrefs, processors need to combine the attributes that are specified on the referencing and referenced element.
-   **[Processing xrefs and conrefs within a conref](../../archSpec/base/handling-xref-and-conref-within-topics.md)**  
When referenced content contains a content reference or cross reference, the effective target of the reference depends on the form of address that is used in the referenced content. It also might depend on the map context, especially when key scopes are present.
-   **[Examples of content referencing](../../archSpec/base/examples-conref.md)**  
This section contains examples and scenarios that illustrate the use and processing of `@conref`, `@conkeyref`, and related content-referencing attributes.

**Parent topic:**[DITA processing](../../archSpec/base/ditaprocessing.md)

