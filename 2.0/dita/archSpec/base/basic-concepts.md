---
author: OASIS DITA Technical Committee
---

# Basic concepts

DITA has been designed to satisfy requirements for information typing, semantic markup, modularity, reuse, interchange, and production of different deliverable forms from a single source. These topics provide an overview of the key DITA features and facilities that serve to satisfy these requirements.

-   **DITA topics**

    In DITA, a topic is the basic unit of authoring and reuse. All DITA topics have the same basic structure: a title and, optionally, a body of content. Topics can be generic or more specialized; specialized topics represent more specific information types or semantic roles, for example, `<concept>`, `<task>`, or `<reference>` See [DITA topics](topicdefined.md) for more information.

-   **DITA maps**

    DITA maps are documents that organize topics and other resources into structured collections of information. DITA maps specify hierarchy and the relationships among the topics; they also provide the contexts in which keys are defined and resolved. See [DITA maps](definition-of-ditamaps.md) for more information.

-   **Information typing**

    Information typing is the practice of identifying types of topics, such as concept, reference, and task, to clearly distinguish between different types of information. Topics that answer different reader questions \(How do I? What is?\) can be categorized with different information types. The base information types provided by DITA specializations \(for example, technical content, machine industry, and learning and training\) provide starter sets of information types that can be adopted immediately by many technical and business-related organizations. See [Information typing](information-typing.md) for more information.

-   **DITA addressing**

    DITA addressing defines how DITA content identifies and references resources. References within DITA either are direct URI-based addresses, or they are indirect key-based addresses. Within DITA documents, individual elements are addressed by unique identifiers specified on the `@id` attribute. DITA defines two fragment-identifier syntaxes; one is the full fragment-identifier syntax, and the other is an abbreviated fragment-identifier syntax that can be used when addressing non-topic elements from within the same topic. See [DITA addressing](ditaaddressing.md) for more information.

-   **Content reuse**

    The DITA `@conref`, `@conkeyref`, `@conrefend`, and `@conaction` attributes provide mechanisms for reusing content within DITA topics or maps. These mechanisms can be used both to pull and push content. See [Content reuse](conref.md) for more information

-   **Conditional processing**

    Conditional processing is the filtering or flagging of information based on processing-time criteria. See [Conditional processing](condproc.md) for more information.

-   **Configuration**

    A document-type shell is an XML grammar file that specifies the elements and attributes that are allowed in a DITA document. The document-type shell integrates structural modules, domain modules, and element-configuration modules. In addition, a document-type shell specifies whether and how topics can nest. See [Document-type configuration](configuration.md) for more information.

-   **Specialization**

    The specialization feature of DITA allows for the creation of new element types and attributes that are explicitly and formally derived from existing types. This facilitates interchange of conforming DITA content and ensures a minimum level of common processing for all DITA content. It also allows specialization-aware processors to add specialization-specific processing to existing base processing. See [Specialization](specialization.md) for more information.

-   **Constraints**

    Constraint modules restrict content models or attribute lists for specific element types, remove certain extension elements from an integrated domain module, or replace base element types with domain-provided, extension element types. See [Constraints](constraints.md) for more information.


**Parent topic:**[Overview of DITA](../../archSpec/base/introduction-to-dita.md)

