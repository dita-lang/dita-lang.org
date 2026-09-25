---
author: OASIS DITA Technical Committee
---

# RELAX NG coding requirements

This section explains how to implement RNG-based document-type shells, specializations, and element-configuration modules \(constraints and expansions\).

If you plan to generate DTD- or XSD-based modules from RELAX NG modules, avoid RELAX NG features that cannot be translated into DTD or XSD constructs. Such features include lexical patterns for attributes and elements, interleave patterns, and context-specific patterns for content models or attribute lists.

When RELAX NG is used directly for DITA document validation, the document-type shells for those documents can integrate constraint modules that use the full power of RELAX NG to enforce constraints that cannot be enforced by DTDs or XSDs.

-   **[RELAX NG: Overview of coding requirements](../../archSpec/base/relax-ng-coding-overview.md)**  
This topic contains general information about the self-integrating aspect of domain specialization modules, RELAX NG grammar files, and the two RNG syntaxes
-   **[RELAX NG: Coding requirements for document-type shells](../../archSpec/base/relax-ng-coding-doctype-shell.md)**  
A RNG-based document-type shell is organized into sections; each section follows a pattern. These patterns help ensure that the shell follows XML parsing rules for RELAX NG; they also establish a modular design that simplifies creation of new document-type shells.
-   **[RELAX NG: Coding requirements for structural and element-domain modules](../../archSpec/base/relax-ng-coding-element-types.md)**  
This topic covers general coding requirements for defining element types in both structural and element-domain vocabulary modules.
-   **[RELAX NG: Coding requirements for structural modules](../../archSpec/base/relax-ng-coding-structural-modules.md)**  
A structural vocabulary module defines a new topic or map type as a specialization of a topic or map type.
-   **[RELAX NG: Coding requirements for element-domain modules](../../archSpec/base/relax-ng-coding-element-domains.md)**  
Element-domain modules declare an extension pattern for each element that is extended by the domain. These patterns are used when including the domain module in document-type shells.
-   **[RELAX NG: Coding requirements for attribute-domain modules](../../archSpec/base/relax-ng-coding-attribute-domains.md)**  
An attribute-domain vocabulary module declares a new attribute specialized from either the `@props` or `@base` attribute.
-   **[RELAX NG: Coding requirements for element-configuration modules](../../archSpec/base/relax-ng-coding-requirements-for-element-configuration-modules.md)**  
An element-configuration module \(constraint and expansion\) redefines the content model or attribute list for one or more elements.

**Parent topic:**[Coding practices for DITA grammar files](../../archSpec/base/coding-requirements.md)

