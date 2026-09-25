---
author: OASIS DITA Technical Committee
---

# Equivalence of document-type shells

Two distinct DITA document types that are taken from different tools or environments might be functionally equivalent.

A DITA document type is defined by the following:

-   The set of vocabulary and element-configuration modules \(constraint and expansion\) that are integrated by the document-type shell
-   The values of the `@class` attributes of all the elements in the document
-   Rules for topic nesting

Two document-type shells define the same DITA document type if they integrate identical vocabulary modules, element-configuration modules \(constraint and expansion\), and rules for topic nesting. For example, a document-type shell that is an unmodified copy of the OASIS-provided document-type shell for topic defines the same DITA document type as the original document-type shell. However, the new document-type shell has the following differences:

-   It is a distinct file that is stored in a different location.
-   It has a distinct system identifier.
-   If it has a public identifier, the public identifier is unique.

**Note:** The public or system identifier that is associated with a given document-type shell is not necessarily distinguishing. Two different people or groups might use the same modules and constraints to assemble equivalent document-type shells, while giving them different names or public identifiers.

**Parent topic:**[Document-type configuration](../../archSpec/base/configuration.md)

