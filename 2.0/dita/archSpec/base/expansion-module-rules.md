---
author: OASIS DITA Technical Committee
---

# Expansion module rules

There are certain rules that apply to the design and implementation of expansion modules. These rules all stem from the requirement that the content model of a specialized element must be consistent with the content model of the specialization base. After generalization, the content model of an element affected by an expansion module must match the original content model for that element.

-   **Specialization base of expanded elements**

    Elements that are added to content models by expansion models must be specializations of existing elements that are permitted in the original content model.

-   **Content model of expanded elements**

    Elements that are added to content models by expansion models must be allowed only where their specialization base is allowed.

    exampleFor example, when creating an expansion model that adds a specialization of `<data>` to `<ol>`, the specialization of `<data>` must only be allowed before any `<li>` elements, as that is the only place that the `<data>` element is allowed in the content model for an ordered list.

-   **Ordinality of expanded elements**

    Elements that are added to content models by expansion modules must not violate the ordinality of the original content model. If the original content model requires a child element to occur at least once, then the expanded content model cannot break this requirement. If the original content model only permits a child element to occur once, then the expanded content model cannot break this requirement.

    example

    For example, in the expansion module that adds a specialization of `<data>` to `<ol>`, the redefined content model for `<ol>` cannot make the `<li>` element optional.

    However, an expansion module that adds a specialization of `<li>` \(`<listIntro>`\) to `<ol>` can redefine the content model of `<ol>` in the following ways:

    -   Make `<listIntro>` the first child element and be required
    -   Make `<li>` the second child element and optional
    When a DITA topic affected by this expansion module is generalized, the resulting markup would be valid; the content model of `<ol>` would be respected.

-   **Aggregation of constraint modules**

    The content model of an element can be modified by either of the following element-configuration modules:

    -   Constraint module
    -   Expansion module
    For any document-type shell, the content model of an element can only be modified by a single element-type configuration module. If multiple constraints or extensions need to be applied to a single element, the element configurations must be combined into a single module that reflects all the constraints and expansions that were defined in the original separate modules.


**Parent topic:**[Expansion modules](../../archSpec/base/expansion-modules.md)

