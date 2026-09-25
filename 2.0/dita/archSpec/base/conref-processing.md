---
author: OASIS DITA Technical Committee
---

# Processing conrefs

When processing content references, DITA processors compare the restrictions of each context to ensure that the conrefed content is valid in its new context.

**Note:** The DITA `@conref` attribute is a transclusion mechanism similar to XML XInclude. DITA differs from these mechanisms, however, in that conref validity does not apply simply to the current content at the time of replacement, but to the possible resolved content given the restrictions of both the referencing document type and the referenced document type.

When content is reused between two documents with different domains or constraints, it is possible for the reused content to include domain extensions that are not defined for the new context, or to include elements that would be constrained out of the new context. When pulling or pushing content with the conref mechanism, processors resolving conrefs can can optionally generalize specializations as needed for the resolving context.

A conref processor SHOULD NOT permit resolution of a reuse relationship that could be rendered invalid under the rules of either the reused or reusing content.

When resolving `@conkeyref` attributes, processors SHOULD issue a warning when a `@conkeyref` reference cannot be resolved and there is no `@conref` attribute to use as a fallback. Processors MAY issue a warning when a `@conkeyref` cannot be resolved to an element and a specified `@conref` is used as a fallback.

## Common error conditions related to conref ranges

When encountering the following error conditions, an implementation can optionally issue an error message.

|Condition or Issue|Result|
|------------------|------|
|The `@conref` attribute cannot be resolved in the target document \(the target element might have been removed or its id has changed\).|The `@conref` is ignored.|
|The `@conrefend` attribute cannot be resolved in the target document \(the target element might have been removed or its id has changed\).|Range cannot be resolved, optional recovery processes the result as a simple conref.|
|Start and end elements are not siblings in the target document.|If the start element exists, optional recovery processes the result as a simple conref.|
|End element occurs before the start element in the target document.|If the start element exists, optional recovery processes the result as a simple conref.|
|An element has a `@conrefend` attribute but is missing the `@conref` attribute.|The `@conrefend` attribute is ignored.|

**Parent topic:**[Content reference \(conref\)](../../archSpec/base/conref.md)

