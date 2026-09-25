---
author: OASIS DITA Technical Committee
---

# Processing xrefs and conrefs within a conref

When referenced content contains a content reference or cross reference, the effective target of the reference depends on the form of address that is used in the referenced content. It also might depend on the map context, especially when key scopes are present.

-   **Direct URI reference \(but not a same-topic fragment identifier \)**

    When the address is a direct URI reference of any form other than a same-topic fragment identifier, processors MUST resolve it relative to the source document that contains the original URI reference.

-   **Same-topic fragment identifier**

    When the address is a same-topic fragment identifier, processors MUST resolve it relative to the location of the content reference \(referencing context\).

-   **Key reference**

    When the address is a key reference, processors MUST resolve it relative to the location of the content reference \(referencing context\).


When resolving key references or same-topic fragment identifiers, the phrase location of the content reference means the final resolved context. For example, in a case where content references are chained \(topic A pulls from topic B, which in turn pulls a reference from topic C\), the reference is resolved relative to the topic that is rendered. When topic B is rendered, the reference is resolved relative to the content reference in topic B; when topic A is rendered, the reference is resolved relative to topic A. If content is pushed from topic A to topic B to topic C, then the same-topic fragment identifier is resolved in the context of topic C.

The implication is that a content reference or cross reference can resolve to different targets in different use contexts. This is because a URI reference that contains a same-topic fragment identifier is resolved in the context of the topic that contains the content reference, and a key reference is resolved in the context of the key scope that is in effect for each use of the topic that contains the content reference.

**Note:** In the case of same-topic fragment identifiers, the author of the content reference needs to ensure that any element IDs that are specified in same-topic fragment identifiers in the referenced content will also be available in the referencing topic at resolution time.

**Parent topic:**[Content reference \(conref\)](../../archSpec/base/conref.md)

