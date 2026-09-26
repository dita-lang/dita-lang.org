---
author: OASIS DITA Technical Committee
---

# SVG domain

The SVG domain elements enable the use of embedded or referenced SVG markup. Referenced SVG markup must be stored in separate, non-DITA XML documents. SVG is a W3C standard.

For SVG markup that is stored directly in DITA documents that are validated using DTDs, the SVG elements must use a namespace prefix in order to avoid conflict with DITA-defined elements of the same name. Documents validated using RELAX NG can default the SVG namespace on the SVG `<svg>` element. SVG elements that are referenced using the `<svgref>` element do not need to have a namespace prefix, because they are parsed separately from the DITA documents that refer to them. By default, the SVG domain is configured to use the namespace prefix svg for the SVG elements.

-   **[svg-container](../../langRef/technicalContent/svg-container.md)**  
The `<svg-container>` element stores content that contributes to a scalable vector graphic \(SVG\).
-   **[svgref](../../langRef/technicalContent/svgref.md)**  
The `<svgref>` element references a non-DITA XML document that contains scalable vector graphic \(SVG\) markup.

**Parent topic:**[Domain specializations](../../langRef/containers/technicalContent-domain-elements.md)

**Related information**  


[Scalable Vector Graphics \(SVG\) 1.1 \(Second Edition\)](http://www.w3.org/TR/SVG/)

