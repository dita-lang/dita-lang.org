---
author: OASIS DITA Technical Committee
---

# Expectations for conditional processing

Certain behaviors are expected of processors when working with conditional processing.

Processors SHOULD be able to perform filtering and flagging using the following attributes: `@props`, `@audience`, `@deliveryTarget`, `@platform`, `@product`, and `@otherprops`.

The `@props` attribute can be specialized to create new attributes, and processors SHOULD be able to perform conditional processing on specializations of `@props`.

Although metadata elements exist with similar names, such as the `<audience>` element, the specification does not define any mechanism for conditional processing using metadata elements.

**Parent topic:**[Conditional processing](../../archSpec/base/condproc.md)

