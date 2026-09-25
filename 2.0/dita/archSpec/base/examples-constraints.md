---
author: OASIS DITA Technical Committee
---

# Examples: Constraints implemented using DTDs

This section of the specification contains examples of constraints implemented using DTD.

-   **[Example: Restrict the content model for the topic element using DTD](../../archSpec/base/example-contraints-redefine-content-model.md)**  
In this scenario, the DITA architect for Acme Incorporated wants to redefine the content model for the topic document type. They wantto omit certain elements, make the `<shortdesc>` element required, and disallow topic nesting.
-   **[Example: Constrain attributes for the section element using DTD](../../archSpec/base/example-contraints-redefine-content-model-attributes.md)**  
In this scenario, a DITA architect wants to redefine the attributes for the `<section>` element. They want to make the `@id` attribute required.
-   **[Example: Constrain a domain module using DTD](../../archSpec/base/example-contraints-subset-domain.md)**  
In this scenario, a DITA architect wants to use only a subset of the elements defined in the highlighting domain. They want to use `<b>` and `<i>` but not any other of the elements in the domain. They want to integrate this constraint into the document-type shell for task.
-   **[Example: Replace a base element with the domain extensions using DTD](../../archSpec/base/example-contraints-replace-base-element-w-domain-extensions.md)**  
In this scenario, a DITA architect wants to remove the `<ph>` element but allow the extensions of `<ph>` that exist in the highlighting, programming, software, and user interface domains.
-   **[Example: Apply multiple constraints to a single document-type shell using DTD](../../archSpec/base/example-contraints-apply-multiple-constraints.md)**  
You can apply multiple constraints to a single document-type shell. However, there can be only one constraint for a given element or domain.

**Parent topic:**[Constraint modules](../../non-normative/developing-constraint-and-expansion-modules.md)

**Related information**  


[DTD: Coding requirements for element-configuration modules](../../archSpec/base/dtd-coding-requirements-for-element-configuration-modules.md)

