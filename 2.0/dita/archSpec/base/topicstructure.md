---
author: OASIS DITA Technical Committee
---

# Topic structure

All topics have the same basic structure, regardless of topic type: title, description or abstract, prolog, body, related links, and nested topics.

All DITA topics must have an XML identifier \(the `@id` attribute\) and a title. The basic topic structure consists of the following parts, some of which are optional:

-   **Topic element**

    The topic element holds the required `@id` attribute and contains all other elements.

-   **Title**

    The title contains the subject of the topic.

-   **Alternate titles**

    Titles specifically for use in navigation or search. When not provided, the base title is used for all contexts.

-   **Short description or abstract**

    A short description of the topic or a longer abstract with an embedded short description. The short description might be used both in topic content \(as the first paragraph\), in generated summaries that include the topic, and in links to the topic. Alternatively, the abstract lets you create more complex introductory content and uses an embedded short description element to define the part of the abstract that is suitable for summaries and link previews.

    While short descriptions are not required, they can make a dramatic difference to the usability of an information set and should generally be provided for all topics.

-   **Prolog**

    The prolog is the container for topic metadata, such as change history, audience, product, and so on.

-   **Body**

    The topic body contains the topic content: paragraphs, lists, sections, and other content that the information type permits.

-   **Related links**

    Related links connect to other topics. When an author creates a link as part of a topic, the topic becomes dependent on the other topic being available. To reduce dependencies between topics and thereby increase the ability to reuse each topic, authors can use DITA maps to define and manage links between topics, instead of embedding links directly in each related topic.

-   **Nested topics**

    Topics can be defined inside other topics. However, nesting requires special care because it can result in complex documents that are less usable and less reusable. Nesting might be appropriate for information that is first converted from desktop publishing or word processing files or for topics that are unusable independent from their parent or sibling topics.

    The rules for topic nesting can be configured in a document-type shells. For example, the standard DITA configuration for concept topics only allows nested concept topics. However, local configuration of the concept topic type could allow other topic types to nest or disallow topic nesting entirely. In addition, the `@chunk` attribute enables topics to be equally re-usable regardless of whether they are separate or nested. The standard DITA configuration for ditabase document-type documents allows unrestricted topic nesting and can be used for holding sets of otherwise unrelated topics that hold re-usable content. It can also be used to convert DITA topics from non-DITA legacy source without first determining how individual topics should be organized into separate XML documents.


**Parent topic:**[DITA topics](../../archSpec/base/topicover.md)

