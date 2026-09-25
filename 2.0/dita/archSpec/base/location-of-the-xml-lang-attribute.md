---
author: OASIS DITA Technical Committee
---

# Recommendations for the `@xml:lang` attribute

Specifying the `@xml:lang` attribute in the DITA source facilitates translation and helps ensure that processors will handle content appropriately. Accordingly, this specification makes certain best-practices recommendations for where the `@xml:lang` attribute should be set.

Setting the `@xml:lang` attribute in the source-language document facilitates the translation process. Some translation tools do not support adding new markup to the document that is being translated, so if the source language content does not set the `@xml:lang` attribute, it might be difficult or impossible for a translator to add the `@xml:lang` attribute to the translated document.

In addition, setting the `@xml:lang` attribute in the DITA source ensures that processors handle content in a language- and locale-appropriate way. If the `@xml:lang` attribute is not set, processors might assume a default value which is inappropriate for the DITA content.

The following table outlines the recommended use of the `@xml:lang` attribute in topics and maps. These recommendations ensure that DITA resources have an effective default language.

|DITA resource|Recommended use|
|-------------|---------------|
|DITA topic document that contains a single language|Specify the `@xml:lang` attribute on the root element of the document.|
|DITA topic document that contains more than one language|Specify the primary language and locale that applies to the topic on the highest-level element that contains content. If part of a topic is written in a different language, enclose that content in an element with the `@xml:lang` attribute set appropriately. This applies to both block and inline elements that use the alternate language.|
|DITA map|Specify the `@xml:lang` attribute on the root element of the map. This applies both to the root map and any submaps.|

**Parent topic:**[The xml:lang attribute](../../archSpec/base/xmllang.md)

