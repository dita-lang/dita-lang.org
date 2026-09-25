---
author: [OASIS DITA Technical Committee, OASIS DITA Technical Committee]
---

# Direct URI-based content reuse

The `@conref` attribute is used to reference reusable content by URI. It allows reuse of DITA elements, including topic- or map-based elements.

The value of the `@conref` attribute is a URI reference to a DITA element. See [URI-based \(direct\) addressing](uri-based-addressing.md) for details on specifying URI references to DITA elements. As with other DITA references, a `@conref` attribute that references a resource without an ID is treated as a reference to the first topic or map in the document.

**Note:** When using the `@conref` attribute on an element, the content of that element is ignored by processors. For example, if a phrase is marked up like this:

```
<ph conref="#topic/ph">Something</ph>
```

the word "Something" will be replaced by the content of the referenced `<ph>` element.

**Parent topic:**[Content reference \(conref\)](../../archSpec/base/conref.md)

**Related information**  


[Content reference \(conref\)](../../archSpec/base/conref.md)

