---
author: OASIS DITA Technical Committee
---

# MathML domain

The MathML domain elements enable the use of embedded or referenced MathML markup. Referenced MathML markup must be stored in separate, non-DITA XML documents. MathML is a W3C standard.

When MathMLelements are embedded in DITA documents that are validated using DTDs, the MathML elements must use a namespace prefix in order to avoid conflict with the DITA-defined elements of the same name. Documents validated using RELAX NG can default the MathML namespace on the MathML `<math>` element. MathML elements that are referenced using the `<mathmlref>` element do not need to have a namespace prefix, because they are parsed separately from the DITA documents that refer to them.

By default, the MathML domain is configured to use the namespace prefix "m" for the MathML elements.

-   **[mathml](../../langRef/technicalContent/mathml.md)**  
The `<mathml>` element contains MathML markup or other content that contributes to a semantic equation.
-   **[mathmlref](../../langRef/technicalContent/mathmlref.md)**  
The `<mathmlref>` element references a non-DITA XML document that contains MathML markup.

**Parent topic:**[Domain specializations](../../langRef/containers/technicalContent-domain-elements.md)

**Related information**  


[Mathematical Markup Language \(MathML\), Version 3.0](http://www.w3.org/Math/)

