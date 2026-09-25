---
author: OASIS DITA Technical Committee
---

# Location of `<indexterm>` elements

`<indexterm>` elements can occur in topic prologs, anywhere else in DITA topics, and in DITA maps.

The location of an `<indexterm>` element determines the point in the document that the element references.

-   **Topic prologs**

    An `<indexterm>` element that is located in a topic prolog is a point reference to the title of the topic. If an `<indexterm>` element has an `@end` attribute, it is a point reference to the end of the topic, including any sub-topics.

-   **Anywhere else in a DITA topic**

    An `<indexterm>` element that is located in a topic \(and not in the topic prolog\) is a point reference to the location where the `<indexterm>` element occurs.

-   **DITA maps**

    An `<indexterm>` element that is contained within a `<topicref>` element is a point reference to the title of the topic. If an `<indexterm>` element has an `@end` attribute, it is a point reference to the end of the branch that is specified by the topic reference. If the topic reference is not bound to a resource, the `<indexterm>` element has no stated purpose.


**Parent topic:**[Indexes](../../archSpec/base/indexes.md)

