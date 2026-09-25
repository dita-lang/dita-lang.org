---
author: OASIS DITA Technical Committee
---

# Rules for document-type shells

This topic collects the rules that concern DITA document-type shells.

-   **XML grammars**

    While the DITA specification only defines coding requirements for DTD and RELAX NG, conforming DITA documents MAY use other document-type constraint languages, such as XSD or Schematron.

-   **Defining element or attribute types**

    With two exceptions, a document-type shell MUST NOT directly define element or attribute types; it only includes vocabulary and element-configuration modules \(constraint and expansion\). The exceptions to this rule are the following:

    -   The ditabase document-type shell directly defines the `<dita>` element.
    -   RNG-based document-type shells directly specify values for the `@specializations` attribute. These values reflect the details of the attribute domains that are integrated by the document-type shell.
-   **Document-type shells not provided by OASIS**

    Document-type shells that are not provided by OASIS MUST have a unique public identifier, if public identifiers are used.

    Document-type shells that are not provided by OASIS MUST NOT indicate OASIS as the owner. The public identifier or URN for such document-type shells SHOULD reflect the owner or creator of the document-type shell.

    exampleFor example, if `example.com` creates a copy of the document-type shell for topic, an appropriate public identifier would be "-//EXAMPLE//DTD DITA Topic//EN", where "EXAMPLE" is the component of the public identifier that identifies the owner. An appropriate URN would be urn:pubid:example.com:names:dita:rng:topic.rng.


**Parent topic:**[Document-type configuration](../../archSpec/base/configuration.md)

