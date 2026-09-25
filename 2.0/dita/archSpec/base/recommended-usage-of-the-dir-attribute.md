---
author: OASIS DITA Technical Committee
---

# Recommended usage of the `@dir` attribute

Typically, processors that fully support the Unicode Bidirectional Algorithm handle bidirectional text without the need to specify directionality in the DITA source, if the `@xml:lang` attribute is specified on the highest-level element.

The need to specify the `@dir` attribute primarily occurs in the following situations:

-   Processors that do not fully support the Unicode Bidirectional Algorithm
-   Documents that contain bidirectional text and characters with neutral bidirectionality

For the above situations, we recommend that DITA source documents, in addition to specifying the `@xml:lang` attribute, also specify the `@dir` attribute on the highest-level element that is necessary.

**Parent topic:**[The dir attribute](../../archSpec/base/diratt.md)

