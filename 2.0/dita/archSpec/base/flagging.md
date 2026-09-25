---
author: OASIS DITA Technical Committee
---

# Flagging based on metadata attributes

When rendering content, a conditional processing profile can be used to specify whether an element's content is flagged based on its conditional processing attributes.

exampleFor example, flagging can be used to highlight the fact that content applies to a specific audience or operating system. Flagging can also draw a reader's attention to content that has been marked as being revised.

When deciding whether to flag a particular element, a processor evaluates each value. Wherever an attribute value that has been set as flagged appears \(for example, `audience="administrator"`\), the processor adds the flag. When multiple flags apply to a single element, multiple flags are rendered, typically in the order that they are encountered.

Flagging behavior is determined based on the DITAVAL rule that matches a metadata attribute value. Flagging options for the content of an element include setting a text style, color, or background color. It also includes the ability to place an image or text at the start or end of the flagged content. If the `@add-outputclass` attribute is present in the matching DITAVAL rule, the flagged element is treated as if the specified value is added to its `@outputclass` attribute.

If a matching DITAVAL rule uses the attribute value `action="passthrough"`, a processor is instructed to pass the attribute directly through to rendered output, which enables flagging within rendering tools. How the attribute is passed through will depend on the requirements of those rendering tools.

When the same element evaluates as both flagged and included, the element is both flagged and included. When the same element evaluates as both flagged and filtered \(for example, flagged because of a value for the `@audience` attribute and filtered because of a value for the `@product` attribute value\), the element is filtered.

When flagging methods are specified for elements at different levels of the containment hierarchy, the flagging method that is specified for the element at the lowest level of the hierarchy applies.

exampleFor example, if a `<section>` element is to be flagged with green text and a `<p>` element within that section is to be flagged with red text, the `<p>` element should be rendered with red text.

**Parent topic:**[Conditional processing](../../archSpec/base/condproc.md)

**Related information**  


[DITAVAL markup with extended flagging example](../../langRef/ditaval/val.md)

[DITAVAL markup for flagging revisions](../../langRef/ditaval/revprop.md)

