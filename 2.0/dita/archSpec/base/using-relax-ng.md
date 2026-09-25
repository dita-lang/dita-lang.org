---
author: OASIS DITA Technical Committee
---

# Normative versions of DITA grammar files

DITA document types and vocabulary modules can be constructed using several XML-document grammar mechanisms. The DITA specification provides coding requirements for DTDs and RNG, and it also includes grammar files that are constructed using those mechanisms. The RNG grammar files are normative.

The DITA Technical Committee chose the RELAX NG XML syntax for the following reasons:

-   **Easy use of foreign markup**

    The DITA grammar files maintained by OASIS depend on this feature of RELAX NG in order to capture metadata about document-type shells and modules.

    The foreign vocabulary feature can be used to include metadata. The DITA 1.3 RNG-based grammar files contained metadata that was used when DTD- and XSD-based grammar files were generated.

    The foreign vocabulary feature can also be used to include Schematron rules directly in RELAX NG grammars. Schematron rules can check for patterns that either are not expressible with RELAX NG directly or that would be difficult to express.

-   **RELAX NG `<div>` element**

    This general grouping element allows for arbitrary organization and grouping of patterns within grammar documents. Such grouping tends to make the grammar documents easier to work with, especially in XML-aware editors.

-   **Capability of expressing precise restrictions**

    RELAX NG is capable of expressing constraints that are more precise than is possible with DTDs. For example, RELAX NG patterns can be context specific such that the same element type can allow different content or attributes in different contexts. However, the grammar files that are provided by the OASIS DITA Technical Committee do not use any features of RELAX NG that cannot be translated into equivalent DTD constructs.


The DITA use of RELAX NG depends on the **RELAX NG DTD Compatibility** specification, which provides a mechanism for defining default-attribute values and embedded documentation. Processors that use RELAX NG for DITA documents in which required attributes \(for example, the `@class` attribute\) are not explicitly present must implement the DTD compatibility specification in order to get default attribute values.

**Parent topic:**[Introduction](../../introduction/dita-release-overview.md)

