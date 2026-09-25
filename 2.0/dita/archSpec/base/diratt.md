---
author: OASIS DITA Technical Committee
---

# The `@dir` attribute

The `@dir` attribute provides instructions to processors about how bidirectional text is rendered.

The `@dir` attribute identifies or overrides the text directionality. The following values are valid:

-   **lro**

    Indicates an override of the Unicode Bidirectional Algorithm, forcing the element into left-to-right mode.

-   **ltr**

    Indicates left-to-right.

-   **rlo**

    Indicates an override of the Unicode Bidirectional Algorithm, forcing the element into right-to-left mode.

-   **rtl**

    Indicates right-to-left.

-   **-dita-use-conref-target**

    See [Using the -dita-use-conref-target value](../../langRef/attributes/../../common/../archSpec/base/ditauseconreftarget.md) for more information.


-   **[The Unicode Bidirectional Algorithm](../../archSpec/base/the-unicode-bidirectional-algorithm.md)**  
The Unicode Bidirectional Algorithm plays a critical role in ensuring that bidirectional text is correctly rendered.
-   **[Recommended usage of the dir attribute](../../archSpec/base/recommended-usage-of-the-dir-attribute.md)**  
Typically, processors that fully support the Unicode Bidirectional Algorithm handle bidirectional text without the need to specify directionality in the DITA source, if the `@xml:lang` attribute is specified on the highest-level element.
-   **[Processing expectations regarding the Unicode Bidirectional Algorithm](../../archSpec/base/processing-expectations-about-the-unicode-bidirectional-algorithm.md)**  
Processor support for the Unicode Bidirectional Algorithm is critical.

**Parent topic:**[Translation and localization](../../archSpec/base/translation.md)

