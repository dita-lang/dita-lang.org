---
author: OASIS DITA Technical Committee
---

# Processing expectations regarding the `@xml:lang` attribute

When the `@xml:lang` attribute is specified as recommended, a language for the content is clearly indicated. However, when the `@xml:lang` attribute is not specified, processors might need to assign a default value.

If the root element of a map or a top-level topic has no value for the `@xml:lang` attribute, a processor SHOULD assume a default value. The default value of the processor can be either fixed, configurable, or derived from the content itself, such as the `@xml:lang` attribute on the root map.

When a `@conref` or `@conkeyref` attribute is used to include content from one element into another, the processor MUST use the effective value of the `@xml:lang` attribute from the referenced element. If the referenced element does not have an explicit value for the `@xml:lang` attribute, the processor SHOULD use the default value.

Processors SHOULD render each element in a way that is appropriate for its language as identified by the `@xml:lang` attribute.

**Parent topic:**[The xml:lang attribute](../../archSpec/base/xmllang.md)

