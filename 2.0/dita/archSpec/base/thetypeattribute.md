---
author: [OASIS DITA Technical Committee, OASIS DITA Technical Committee]
---

# The `@type` attribute

On linking elements, the `@type` attribute describes the target of a reference. The `@type` attribute is also used on several non-linking elements for other purposes.

This topic describes how to interpret the `@type` attribute when it is used on linking elements. Usage information for the `@type` attribute on other elements, such as `<note>` or `<copyright>`, is described in the element reference topics for those elements.

If the `@type` attribute is specified on a linking element that references DITA content, the attribute value should reflect the `@class` attribute of the referenced element. The value can be an unqualified local name, for example, fig, or a qualified name exactly as specified in the `@class` attribute, for example, topic/fig. Processors might ignore qualified names or consider only the local name.

If not explicitly specified on an element, the `@type` attribute value cascades from the closest containing element. If there is no explicit value for the `@type` attribute specified on an ancestor element, the processor should retrieve the type from the target resource, if it is available. If the type cannot be determined, the processing default is topic.

Applications MAY issue a warning when the specified or inherited `@type` attribute value does not match the target or a specialization ancestor of the target. Applications MAY recover from this error condition by using the correct value detected.

Only the `<xref>` element can link to content below the topic level. The other linking elements only can link to topics.

The following table lists values for the `@type` attribute that are commonly used on `<xref>` elements:

|Value|Target element|
|-----|--------------|
|**fig**|`<fig>`|
|**fn**|`<fn>`|
|**li**|`<li>`|
|**section**|`<section>`|
|**table**|`<table>`|

An application might generate cross-reference text that is based the value of the `@format` attribute.

-dita-use-conref-target is also a valid value for the `@type` attribute. See [Using the -dita-use-conref-target value](ditauseconreftarget.md) for more information.

**Parent topic:**[DITA linking](../../archSpec/base/dita-linking.md)

