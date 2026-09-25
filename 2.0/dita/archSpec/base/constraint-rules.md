---
author: OASIS DITA Technical Committee
---

# Constraint rules

There are certain rules that apply to the design and implementation of constraints.

-   **Content model**

    The content model for a constrained element must be at least as restrictive as the unconstrained content model for the element.

-   **Domain constraints**

    When a domain module is integrated into a document-type shell, the base domain element can be omitted from the domain extension group or parameter entity. In such a case, there is no separate constraint declaration, because the content model is configured directly in the document-type shell.

    A domain module can be constrained by only one constraint module. This means that all restrictions for the extension elements that are defined in the domain must be contained within that one constraint module.

-   **Structural constraints**

    Each constraint module can constrain elements from only one vocabulary module. For example, a single constraint module that constrains `<refsyn>` from `reference.mod` and constrains `<context>` from `task.mod` is not allowed. This rule maintains granularity of reuse at the module level.

    Constraint modules that restrict different elements from within the same vocabulary module can be combined with one another. Such combinations of constraints on a single vocabulary module have no meaningful order or precedence.

-   **Aggregation of constraint modules**

    The content model of an element can be modified by either of the following element-configuration modules:

    -   Constraint module
    -   Expansion module
    For any document-type shell, the content model of an element can only be modified by a single element-type configuration module. If multiple constraints or extensions need to be applied to a single element, the element configurations must be combined into a single module that reflects all the constraints and expansions that were defined in the original separate modules.


**Parent topic:**[Constraints](../../archSpec/base/constraints.md)

