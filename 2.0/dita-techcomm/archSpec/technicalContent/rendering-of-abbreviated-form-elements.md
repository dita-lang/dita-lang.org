---
author: OASIS DITA Technical Committee
---

# Rendering of `<abbreviated-form>` elements

The `<abbreviated-form>` element is designed to work with glossary entry topics in specific ways.

The design intent is that processors use the following logic:

When a processor encounters an `<abbreviated-form>` element that references a DITA topic, if the referenced topic is not a `<glossentry>` topic or a specialization of `<glossentry>`, the title of the topic SHOULD be rendered.

When a processor encounters an `<abbreviated-form>` element that references a DITA topic, if the referenced topic is a `<glossentry>` topic or a specialization of `<glossentry>`, processors SHOULD render the `<abbreviated-form>` element in the following ways:

-   **First usage**

    Render the contents of the `<glossSurfaceForm>` element, if it is not empty. If the `<glossSurfaceForm>` is empty or does not exist, render the contents of the `<glossterm>` element.

-   **Second and later usage**

    Render the contents of the `<glossAcronym>` element, if it is not empty. If the `<glossAcronym>` is empty or does not exist, render the contents of the `<glossterm>` element.


See the [examples](../../langRef/technicalContent/abbreviated-form.md#example) in the element-reference topic for the `<abbreviated-form>` element.

**Parent topic:**[Usage of glossary entry topics](../../archSpec/technicalContent/glossary-entry-topics-and-terminology-management.md)

