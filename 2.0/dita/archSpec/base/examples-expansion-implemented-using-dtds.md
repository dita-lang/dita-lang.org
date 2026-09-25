---
author: OASIS DITA Technical Committee
---

# Examples: Expansion implemented using DTDs

This section of the specification contains examples of extension modules that are implemented using DTDs.

-   **[Example: Adding an element to the section element using DTDs](../../archSpec/base/adding-an-element-to-the-section-element.md)**  
In this scenario, a DITA architect wants to modify the content model for the `<section>` element. The DITA architect wants to add an optional `<sectionDesc>` element that is specialized from `<p>`.
-   **[Example: Adding an attribute to certain table elements using DTDs](../../archSpec/base/adding-an-attribute-to-certain-table-elements.md)**  
In this scenario, a company makes extensive use of complex tables to present product listings. They occasionally highlight individual cells, rows, or columns for various purposes. The DITA architect wants to implement a semantically meaningful way to identify the purpose of various table elements.
-   **[Example: Adding an existing domain attribute to certain elements using DTDs](../../archSpec/base/adding-an-existing-domain-attribute-to-certain-elements.md)**  
In this scenario, a company wants to use the `@otherprops` attribute specialization. However, they want to make the attribute available **only** on certain elements: `<p>`, `<div>`, and `<section>`.
-   **[Example: Aggregating constraint and expansion modules using DTDs](../../archSpec/base/aggregating-constraint-and-expansion-modules.md)**  
The DITA architect wants to add some extension modules to the document-type shell for topic. The document-type shell already integrates a number of constraint modules.

**Parent topic:**[Expansion modules](../../non-normative/expansion-modules.md)

**Related information**  


[DTD: Coding requirements for element-configuration modules](../../archSpec/base/dtd-coding-requirements-for-element-configuration-modules.md)

