---
author: OASIS DITA Technical Committee
---

# Examples: Constraints implemented using RNG

This section of the specification contains examples of constraints implemented using RNG

-   **[Example: Restrict the content model for the topic element using RNG](../../archSpec/base/example-rng-constraints-redefine-content-model.md)**  
In this scenario, the DITA architect for Acme Incorporated wants to redefine the content model for the topic document type. They wantto omit certain elements, make the `<shortdesc>` element required, and disallow topic nesting.
-   **[Example: Constrain attributes for the section element using RNG](../../archSpec/base/example-rng-constraints-redefine-content-model-attributes.md)**  
In this scenario, a DITA architect wants to redefine the attributes for the `<section>` element. They want to make the `@id` attribute required.
-   **[Example: Constrain a domain module using RNG](../../archSpec/base/example-constrain-a-domain-using-rng.md)**  
In this scenario, a DITA architect wants to use only a subset of the elements defined in the highlighting domain. They want to use `<b>` and `<i>` but not any other of the elements in the domain. They want to integrate this constraint into the document-type shell for task.
-   **[Example: Replace a base element with the domain extensions using RNG](../../archSpec/base/example-rng-constraints-replace-base-element-w-domain-extensions.md)**  
In this scenario, the DITA architect wants to remove the `<ph>` element but allow the extensions of `<ph>` that exist in the highlight, programming, software, and user interface domains.
-   **[Example: Apply multiple constraints to a single document-type shell using RNG](../../archSpec/base/example-rng-constraints-apply-multiple-constraints.md)**  
In this scenario, the DITA architect wants to apply multiple constraints to a document-type shell.

**Parent topic:**[Constraint modules](../../non-normative/developing-constraint-and-expansion-modules.md)

**Related information**  


[RELAX NG: Coding requirements for element-configuration modules](../../archSpec/base/relax-ng-coding-requirements-for-element-configuration-modules.md)

