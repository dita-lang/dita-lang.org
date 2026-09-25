---
author: OASIS DITA Technical Committee
---

# Overview of constraints

Constraint modules enable information architects to restrict the content models or attributes of DITA elements. A constraint is a simplification of an XML grammar such that any instance that conforms to the constrained grammar also will conform to the original grammar.

A constraint module can perform the following functions:

-   **Restrict the content model for an element**

    Constraint modules can modify content models by removing optional elements, making optional elements required, or requiring unordered elements to occur in a specific sequence. Constraint modules cannot make required elements optional or change the order of element occurrence for ordered elements.

    exampleFor example, a constraint for `<topic>` can require `<shortdesc>`, can remove `<abstract>`, and can require that the first child of `<body>` be `<p>`. A constraint cannot allow `<shortdesc>` to follow `<prolog>`, because the content model for `<topic>` requires that `<shortdesc>` precedes `<prolog>`.

-   **Restrict the attributes that are available on an element**

    Constraint modules can restrict the attributes that are available on an element. They also can limit the set of permissible values for an attribute.

    exampleFor example, a constraint for `<note>` can limit the set of allowed values for the `@type` attribute to "note" and "tip". It also can omit the `@othertype` attribute, since it is needed only when the value of the `@type` attribute is "other".

-   **Restrict the elements that are available in a domain**

    Constraint modules can restrict the set of extension elements that are provided in a domain. They also can restrict the content models for the extension elements.

    exampleFor example, a constraint on the programming domain can reduce the list of included extension elements to `<codeph>` and `<codeblock>`.

    **Note:** For DITA implementations that use RNG-based grammar files, restricting the set of extension elements that are provided in a domain can be handled simply by document-type configuration.

-   **Replace base elements with domain extensions**

    Constraint modules can replace base element types with the domain-provided extension elements.

    For example, a constraint module can replace the `<ph>` element with the domain-provided elements, making `<ph>` unavailable.


**Parent topic:**[Constraints](../../archSpec/base/constraints.md)

