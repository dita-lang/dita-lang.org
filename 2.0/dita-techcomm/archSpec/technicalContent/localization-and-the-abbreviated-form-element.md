---
author: OASIS DITA Technical Committee
---

# Localization and the `<abbreviated-form>` element

Implementations that choose to use the `<abbreviated-form>` need to consider the effect on translation.

## Design of the specialization

The `<glossAcronym>` and `<glossSurfaceForm>` elements were designed to accommodate the following realities:

-   **Acronyms do not exist in all languages**

    An acronym in one language might not have an equivalent in another language. In addition, languages have varying conventions for how an expanded form of a term is displayed. When acronyms are first displayed, some languages will display the expanded form followed by the acronym in parenthesis, while other languages do the reverse. For some acronyms, a translation might need to render both the original and the translated version of the acronym. The `<glossSurfaceForm>` enables authors and translators to present a locale-appropriate expanded form to the reader.

    If a language does not have a acronym for a term, the translation of a glossary entry topic might result in an empty `<glossAcronym>` element.

-   **Synonyms**

    Synonyms are specific to languages, so translation of a glossary entry topic might result in empty `<glossSynonym>` elements.


## Translation quality issues

The use of `<abbreviated-form>` elements might have a negative effect on the quality and cost of the translation.

-   Most translation tools do not resolve key references. Accordingly, translators might need to reference supplementary materials in order to understand the content that they are working with.
-   Because many non-English languages vary articles based on gender and case, a simple programmatic insertion of an expanded form or acronym might yield translations that are ungrammatical and awkward.

**Parent topic:**[Usage of glossary entry topics](../../archSpec/technicalContent/glossary-entry-topics-and-terminology-management.md)

