---
author: OASIS DITA Technical Committee
---

# Constraints, processing, and interoperability

Because constraints can make optional elements required, documents that use the same vocabulary modules might have incompatible constraints. Thus the use of constraints can affect the ability for content from one topic or map to be used in another topic or map.

A constraint does not change basic or inherited element semantics. The constrained instances remain valid instances of the unconstrained element type, and the element type retains the same semantics and `@class` attribute declaration. Thus, a constraint never creates a new case to which content processing might need to react.

exampleFor example, a document type constrained to require the `<shortdesc>` element allows a subset of the possible instances of the unconstrained document type with an optional `<shortdesc>` element. Thus, the content processing for topic still works when `<topic>` is constrained to require a short description. Similarly,an unconstrained task is compatible with an unconstrained topic, because the `<task>` element can be generalized to `<topic>`.

exampleHowever, if a topic document type is constrained to require the `<shortdesc>` element, a document type with an unconstrained task is not compatible with the constrained topic document type, because some instances of the task might not have a `<shortdesc>` element. But, if the task document type also has been constrained to require the `<shortdesc>` element, it is compatible with the constrained topic document type.

**Parent topic:**[Constraints](../../archSpec/base/constraints.md)

