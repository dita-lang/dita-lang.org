---
author: OASIS DITA Technical Committee
---

# About conditional processing

Certain concepts are critical for a full understanding of conditional processing.

-   **conditional processing**

    A process that determines whether content is included, excluded, or flagged. This process is based on a comparison of conditional-processing attributes in the DITA source with the rules that are set in one or more DITAVAL documents.

-   **conditional processing attribute**

    Attributes that can be used for filtering and flagging. These are the following attributes:

    -   `@props` and any attribute specialized from `@props`, including those integrated by default in the OASIS-provided document-type shells: `@audience`, `@deliveryTarget`, `@platform`, `@product`, `@otherprops`
    -   The `@rev` attribute, which supports flagging but not filtering
-   **conditional-processing profile**

    A set of rules that are provided to a processor for use at rendering time. These rules are expressed using DITAVAL documents.

-   **DITAVAL document**

    A document that specifies a set of rules that define which elements to include, exclude, or flag. A DITAVAL document can be a file on the file system, a set of rules stored in memory, or another way of storing information that is expressed using DITAVAL syntax.

-   **filtering**

    The process of including or excluding content at rendering time.


-   **flagging**

    The process of emphasizing content by inserting images, text, or stylistic formatting at rendering time.

    DITAVAL documents also support flagging by passing through conditional processing attributes into rendered output, and by adding `@outputclass` values to elements.

    .


**Parent topic:**[Conditional processing](../../archSpec/base/condproc.md)

