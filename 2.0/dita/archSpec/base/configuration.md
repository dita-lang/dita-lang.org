---
author: OASIS DITA Technical Committee
---

# Document-type configuration

Document-type configuration enables the definition of DITA document types that include only the vocabulary modules that are required for a given set of documents. There is no need to modify the vocabulary modules. Document-type configurations are implemented using document-type shells.

-   **[Overview of document-type shells](../../archSpec/base/document-type-shells.md)**  
A document-type shell is an XML grammar file that specifies the elements and attributes that are allowed in a DITA document. The document-type shell integrates structural modules, domain modules, and element-configuration modules. In addition, a document-type shell specifies whether and how topics can nest.
-   **[Rules for document-type shells](../../archSpec/base/rules-document-type-shells.md)**  
This topic collects the rules that concern DITA document-type shells.
-   **[Equivalence of document-type shells](../../archSpec/base/document-type-shells-equivalence.md)**  
Two distinct DITA document types that are taken from different tools or environments might be functionally equivalent.
-   **[Conformance of document-type shells](../../archSpec/base/document-type-shells-conformance.md)**  
DITA documents typically are governed by a conforming DITA document-type shell. However, the conformance of a DITA document is a function of the document instance, not its governing grammar. Conforming DITA documents are not required to use a conforming document-type shell.

**Parent topic:**[Configuration and specialization](../../archSpec/base/configuration-specialization-and-constraints.md)

