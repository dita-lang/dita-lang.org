---
author: OASIS DITA Technical Committee
---

# Merging of cascading attributes

The `@cascade` attribute can be used to modify the additive nature of attribute cascading, although it does not turn off cascading altogether. The attribute has two predefined values: merge and nomerge.

-   **merge**

    Indicates that the metadata attributes cascade, and thatthe values of the metadata attributes are additive. This is the processing default for the `@cascade` attribute.

-   **nomerge**

    Indicates that the metadata attributes cascade, but thatthey are not additive for `<topicref>` elements that specify a different value for a specific metadata attribute. If the cascading value for an attribute is already merged based on multiple ancestor elements, that merged value continues to cascade until a new value is encountered. That is, setting `cascade="nomerge"` does not undo merging that took place on ancestor elements.


If no value is set for the `@cascade` attribute and no value cascades from a containing element, processors SHOULD assume a default of merge.

Implementers MAY define their own custom, implementation-specific tokens for the `@cascade` attribute. To avoid name conflicts between implementations or with future additions to the standard, implementation-specific tokens SHOULD consist of a prefix that gives the name or an abbreviation for the implementation followed by a colon followed by the token or method name. exampleFor example, a processor might define the token "appToken:audience" in order to specify cascading and merging behaviors for **only** the `@audience` attribute.

The predefined values for the `@cascade` attribute MUST precede any implementation-specific tokens, for example, `cascade="merge appToken:audience"`.

**Parent topic:**[Cascading of metadata attributes in a DITA map](../../archSpec/base/cascading-in-a-ditamap.md)

