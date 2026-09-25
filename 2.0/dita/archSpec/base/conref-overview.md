---
author: OASIS DITA Technical Committee
---

# Content referencing overview

The DITA `@conref`, `@conkeyref`, `@conrefend`, and `@conaction` attributes provide mechanisms for reusing content within DITA topics or maps. These mechanisms can be used both to pull and push content.

This topic uses the definitions of [referenced element](linking-and-addressing-terms.md#referenced-element) and [referencing element](linking-and-addressing-terms.md#referencing-element) as defined in [Linking and addressing terminology](linking-and-addressing-terms.md).

-   **Pulling content into the referencing element**

    When the `@conref` or `@conkeyref` attribute is used alone, the referencing element acts as a placeholder for the referenced element. The content of the referenced element is rendered in place of the referencing element.

    The combination of the `@conrefend` attribute with either `@conref` or `@conkeyref` specifies a range of elements that is rendered in place of the referencing element. The start and end elements in a range must be siblings. Although the start and end elements must be of the same type as the referencing element \(or specialized from that element type\), the elements inside the range can be any type.

-   **Pushing content from the referencing element**

    The `@conaction` attribute reverses the direction of reuse from pull to push. With a push, the referencing element is rendered before, after, or in place of the referenced element. The location \(before, after, or in place of\) is determined by the value of the `@conaction` attribute. The `@conaction` and `@conrefend` attributes cannot both be used within the same referencing element, so it is not possible to push a range of elements.


A fragment of DITA content, such as an XML document that contains only a single paragraph without a topic ancestor, does not contain enough information for a conref processor to be able to determine the validity of a reference to it. Consequently, the value of a `@conref` attribute must be one of the following items:

-   A referenced element within a DITA map
-   A referenced element within a DITA topic
-   An entire DITA map
-   An entire DITA topic

**Parent topic:**[Content reference \(conref\)](../../archSpec/base/conref.md)

**Related information**  


[Pushing reusable content to a new location](../../archSpec/base/theconactionattribute.md)

[Indirect key-based content reuse](../../archSpec/base/theconkeyrefattribute.md)

[Direct URI-based content reuse](../../archSpec/base/theconrefattribute.md)

[Reusing a range of elements](../../archSpec/base/theconrefendattribute.md)

