---
author: OASIS DITA Technical Committee
---

# DTD coding requirements

This section explains how to implement DTD-based document-type shells, specializations, and element-configuration modules \(constraint and expansion\).

-   **[DTD: Use of entities](../../archSpec/base/dtd-coding-overview.md)**  
DITA-based DTDs use entities to implement specialization and element configuration. Therefore, an understanding of entities is critical when working with DTD-based document-type shells, vocabulary modules, or element-configuration modules \(constraint and expansion\).
-   **[DTD: Coding requirements for document-type shells](../../archSpec/base/dtd-coding-doctype-shell.md)**  
A DTD-based document-type shell is organized into sections. Each section contains entity declarations that follow specific coding rules.
-   **[DTD: Coding requirements for structural and element-domain modules](../../archSpec/base/dtd-coding-element-types.md)**  
This topic covers general coding requirements for defining element types in both structural and element-domain vocabulary modules.
-   **[DTD: Coding requirements for structural modules](../../archSpec/base/dtd-coding-structural-modules.md)**  
This topic covers general coding requirements for DTD-based structural modules.
-   **[DTD: Coding requirements for element-domain modules](../../archSpec/base/dtd-coding-element-domains.md)**  
The vocabulary modules that define element domains have an additional coding requirement. The entity declaration file must include a parameter entity for each element that the domain extends.
-   **[DTD: Coding requirements for attribute-domain modules](../../archSpec/base/dtd-coding-attribute-domains.md)**  
The vocabulary modules that define attribute domains have additional coding requirements. The module must include a parameter entity for the new attribute, which can be referenced in document-type shells, as well as a general entity that specifies the contribution to the `@specializations` attribute for the attribute domain.
-   **[DTD: Coding requirements for element-configuration modules](../../archSpec/base/dtd-coding-requirements-for-element-configuration-modules.md)**  
Element-configuration modules \(constraint and expansion\) have specific coding requirements.

**Parent topic:**[Coding practices for DITA grammar files](../../archSpec/base/coding-requirements.md)

