---
author: OASIS DITA Technical Committee
---

# Element generalization

Elements are generalized by examining the `@class` attribute. When a generalization process detects that an element belongs to one of the modules that is being generalized, the element is renamed to a more general form.

exampleFor example, the `<step>` element has a `@class` attribute value of `"- topic/li task/step "`. If the task module is generalized, the `<step>` element is renamed to its more general form from the topic module: `<li>`.

For specific concerns when generalizing structural types with dependencies on non-ancestor modules, see [Generalization with cross-specialization dependencies](generalization-w-cross-specialization-dependencies.md).

While the tag name of a given element is normally the same as the type name of the last token in the `@class` value, this is not required. exampleFor example, if a generalization process has already run on the element, the `@class` attribute could contain tokens from two or more modules based on the original specialization. In that case, the element name could already match the first token or an intermediate token in the `@class` attribute. A second generalization process could end up renaming the element again or could leave it alone, depending on the target module or document type.

**Parent topic:**[Generalization](../../archSpec/base/generalization.md)

