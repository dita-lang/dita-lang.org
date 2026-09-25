---
author: OASIS DITA Technical Committee
---

# Filtering based on metadata attributes

When rendering content, a conditional processing profile can be used to specify whether an element's content is filtered based on its conditional processing attributes.

To determine whether content is filtered, a processor compares the conditional processing attributes on a DITA element to rules specified in a conditional processing profile. If any one of the conditional processing attributes evaluates as exclude, that content is filtered.

Within a DITAVAL document, it is possible to specify a default action for conditional processing attributes. When no default is specified, the processing default for any attribute or value not otherwise listed is include. exampleFor example, if no default action is provided for `@audience` and the value novice for that attribute is not defined, that attribute value will have a processing default of include.

When deciding whether to include or exclude a particular element, a processor evaluates each attribute independently:

1.  For each attribute:
    -   If the attribute is empty, or contains only empty groups, it is equivalent to omitting the attribute from the element. If evaluated for the purposes of filtering, the attribute is treated as "include", because an omitted attribute cannot evaluate to "exclude".
    -   If the attribute value does not contain any groups, then if any string token in the attribute value evaluates to include, the element evaluates to include. In other words, the attribute evaluates to exclude only when **all** string tokens in that attribute evaluate to exclude.
    -   If the attribute value does include groups, evaluate as follows, treating ungrouped tokens together as an implicit group:
        1.  For each group \(including any implicit group\), if any string token inside the group evaluates to include, the group evaluates to include. In other words, a group evaluates to exclude only when **all** string tokens in that group evaluate to exclude.
        2.  If any group within an attribute evaluates to exclude, that attribute evaluates to exclude. In other words, the attribute evaluates to include only when **all** groups in that attribute evaluate to include.
2.  If **any single attribute** evaluates to exclude, the element is filtered.

For example, if a paragraph applies to three products and the publisher has chosen to exclude all of them, the processor will exclude the paragraph. This is true even if the paragraph applies to an audience or platform that is not excluded. But if the paragraph applies to an additional product that has not been excluded, then its content is still relevant for the intended output and is preserved.

**Parent topic:**[Conditional processing](../../archSpec/base/condproc.md)

**Related information**  


[Metadata attributes](../../langRef/attributes/universalAttributes.md)

[DITAVAL markup with extended filtering example](../../langRef/ditaval/val.md)

