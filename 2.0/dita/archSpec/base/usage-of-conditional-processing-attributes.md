---
author: OASIS DITA Technical Committee
---

# Conditional processing attribute values

Conditional processing attributes use whitespace-delimited string values or grouped string values to support both filtering and flagging.

The simplest and most common way to specify metadata on a conditional processing attribute is using individual string values. exampleFor example, the values basic and deluxe within `<p product="basic deluxe">` indicate that the paragraph applies to the basic and deluxe products.

Metadata can also be specified on metadata attributes using grouped string values. This syntax is described in [Conditional processing attribute values with groups](usage-of-conditional-processing-attribute-groups.md).

Setting a conditional processing attribute to an empty value or all-whitespace value, such as `product=""`, is equivalent to omitting that attribute from the element.

**Parent topic:**[Conditional processing](../../archSpec/base/condproc.md)

