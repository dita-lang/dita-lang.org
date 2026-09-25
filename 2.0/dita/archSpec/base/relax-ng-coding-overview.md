---
author: OASIS DITA Technical Committee
---

# RELAX NG: Overview of coding requirements

This topic contains general information about the self-integrating aspect of domain specialization modules, RELAX NG grammar files, and the two RNG syntaxes

## Self-integration of RELAX NG domain modules

Domain modules coded in RELAX NG are self-integrating; they automatically add to the content models and attribute lists that they extend. This aspect of RELAX NG results in the following coding practices:

-   Each domain module consists of a single file, unlike the two required for DTDs.
-   The domain modules directly extend elements, unlike DTDs, which rely on an extra file and extensions within the document-type shell.
-   Element-configuration modules \(constraint and expansion\) directly include the modules that they extend, which means that just by referencing an element-configuration module, the document-type shell gets everything it needs to redefine a vocabulary module.

## General RELAX NG information

RELAX NG grammars for DITA document-type shells, vocabulary modules, and element-configuration modules \(constraint and expansion\) can do the following:

-   Use the `<a:documentation>` element anywhere that foreign elements are allowed by RELAX NG. The `<a:documentation>` element refers to the `<documentation>` element type from the `http://relaxng.org/ns/compatibility/annotations/1.0` as defined by the DTD compatibility specification. The prefix "a" is used by convention.
-   Use `<div>` to group pattern declarations.
-   Include embedded Schematron rules or any other foreign vocabulary. Processors can ignore any foreign vocabularies within DITA grammars that are not in the `http://relaxng.org/ns/compatibility/annotations/1.0` or `http://dita.oasis-open.org/architecture/2005/` namespaces.

## Syntaxes for RELAX NG grammars

The RELAX NG specification defines two syntaxes for RELAX NG grammars: the XML syntax and the compact syntax. The two syntaxes are functionally equivalent, and either syntax can be reliably converted into the other by using, for example, the open-source Trang tool.

The DITA coding requirements are defined for the RELAX NG XML syntax. Document-type shells, vocabulary modules, and element-configuration modules \(constraints and expansion\) that use the RELAX NG compact syntax can use the same organizational structures as those defined for the RELAX NG XML syntax.

DITA practitioners can author DITA modules using one RELAX NG syntax, and then use tools to generate modules in the other syntax. The resulting RELAX NG modules are equivalent if there is a one-to-one file correspondence.

**Parent topic:**[RELAX NG coding requirements](../../archSpec/base/relax-ng-requirements.md)

