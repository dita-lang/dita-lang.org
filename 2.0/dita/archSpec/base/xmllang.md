---
author: [OASIS DITA Technical Committee, OASIS DITA Technical Committee]
---

# The `@xml:lang` attribute

The `@xml:lang` attribute specifies the language and optional locale of the content that is contained in an element. The `@xml:lang` attribute is described in the [XML Recommendation](http://www.w3.org/TR/REC-xml/#sec-lang-tag).

Since the `@xml:lang` attribute is an inherent property of the XML document, it does not behave in the same way as other DITA metadata attributes do.

Within topic and map documents, the `@xml:lang` attribute applies to the content and attributes that are contained by the element on which it is specified. This means that it supplies a value for lower-level elements in the containment hierarchy that do not supply their own value for the `@xml:lang` attribute. However, any such value is overridden when an `@xml:lang` attribute with a different value is specified on lower-level elements in the containment hierarchy.

When the `@xml:lang` attribute is specified on a topic reference, it does not apply to the referenced resource. This means that the value of the `@xml:lang` attribute on a topic reference \(or the root element of the map\) does not automatically supply a default value for the referenced topic or DITA map.

For topic and map documents, if no value for the `@xml:lang` value is specified explicitly or on a higher-level element in the containment hierarchy, a processor-determined default value is assumed.

-   **[Recommendations for the xml:lang attribute](../../archSpec/base/location-of-the-xml-lang-attribute.md)**  
Specifying the `@xml:lang` attribute in the DITA source facilitates translation and helps ensure that processors will handle content appropriately. Accordingly, this specification makes certain best-practices recommendations for where the `@xml:lang` attribute should be set.
-   **[Processing expectations regarding the xml:lang attribute](../../archSpec/base/processing-expectations-regarding-the-xml-lang-attribute.md)**  
When the `@xml:lang` attribute is specified as recommended, a language for the content is clearly indicated. However, when the `@xml:lang` attribute is not specified, processors might need to assign a default value.
-   **[Example: content reference and the xml:lang attribute](../../archSpec/base/example-of-conref-and-the-xml-lang-attribute.md)**  
This example outlines how processors determine the effective value of the `@xml:lang` attribute for content that is referenced by the `@conref` or `@conkeyref` attribute.

**Parent topic:**[Translation and localization](../../archSpec/base/translation.md)

