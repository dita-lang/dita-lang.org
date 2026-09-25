---
author: OASIS DITA Technical Committee
---

# About the DITAVAL document

A DITAVAL document specifies a set of rules that defines which elements to include, exclude, or flag.

The markup for DITAVAL documents provides a standard way to define all conditional processing that is associated with the DITA specification.

Each rule in a DITAVAL document does one of the following:

-   Defines a rendering behavior for an attribute and value pair, for example, `audience="novice"`.
-   Defines a default behavior for a conditional processing attribute, such as defining a default rendering behavior of exclude for the `@deliveryTarget`. With that default, any `@deliveryTarget` value not otherwise defined in the document uses that default behavior of exclude.
-   Defines a default behavior for **all** conditional processing attributes, such as defining a default rendering behavior of exclude. With that default, any conditional-processing attribute not otherwise defined in the document uses that default behavior of exclude.

Those rules in a DITAVAL document enable the following actions when a processor matches a rule with a DITA element:

1.  A DITAVAL rule can instruct processors to include matching content.
2.  A DITAVAL rule can instruct processors to exclude matching content.
3.  A DITAVAL rule can instruct processors to flag matching revisions.
4.  A DITAVAL rule can instruct processors to flag matching content with styles also specified on the `<prop>` or `<revprop>` elemen.t
5.  A DITAVAL rule can instruct processors to pass the matching attribute through to rendered output, for processors that are able to recognize and make use of the value.
6.  A DITAVAL rule can instruct processors to treat the matching content as if the element has an `@outputclass` attribute, with the value specified in the `<prop>` or `<revprop>` element using `@add-outputclass`

Processors can implement default behaviors for flagging. This might include alternate text to indicate the start and end points of revised content or stylistic formatting when no specific flagging behavior is specified.

A processor can choose to report conditional processing attribute values encountered in content that do not have a conditional processing rule associated with them.

While the DITAVAL markup is not part of the DITA topic or map vocabulary and cannot be specialized, the XML itself is part of the specification. See [DITAVAL elements](../../langRef/containers/ditaval-elements.md) for details.

**Parent topic:**[Conditional processing](../../archSpec/base/condproc.md)

