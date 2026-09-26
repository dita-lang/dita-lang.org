---
author: OASIS DITA Technical Committee
---

# Aggregated RFC-2119 statements

This appendix contains all the normative statements from the DITA for Technical Content 2.0 specification. They are aggregated here for convenience in this non-normative appendix.

## Aggregated error statements

-   **[DTTCERR-0010](../baseSpec/specification/langRef/attributes/attribute-groups.md#d2686e2063)**

    It is an error to use `parse="xml"` anywhere other than within `<foreign>` or a specialization thereof.

-   **[DTTCERR-0020](../baseSpec/specification/langRef/attributes/commonAttributes.md#d2434e1740)**

    It is an error to use `parse="xml"` anywhere other than within `<foreign>` or a specialization thereof.


## Implementation dependent statements

-   **[DTTCIMP-0010](../langRef/technicalContent/glossentry.md#d3044e80)**

    Processing expectations for glossary entry topics are highly implementation-specific and will depend on the output format.

-   **[DTTCIMP-0020](../langRef/technicalContent/glossSymbol.md#d2828t355)**

    The available height is implementation dependent, but if feasible, it is suggested to be the page or table cell height or some other reasonable value.

-   **[DTTCIMP-0030](../baseSpec/specification/langRef/attributes/attribute-groups.md#d2686e259)**

    Processors can also define custom, implementation-specific tokens for this attribute.

-   **[DTTCIMP-0040](../baseSpec/specification/langRef/attributes/attribute-groups.md#d2686e324)**

    Processors can also define custom, implementation-specific tokens for this attribute.

-   **[DTTCIMP-0050](../baseSpec/specification/langRef/attributes/attribute-groups.md#d2686t2016)**

    The necessity and uses of `@encoding` for non-standard values of `@parse` are implementation-dependent.

-   **[DTTCIMP-0060](../baseSpec/specification/langRef/attributes/commonAttributes.md#d2434e503)**

    Processors can also define custom, implementation-specific tokens for this attribute.

-   **[DTTCIMP-0070](../baseSpec/specification/langRef/attributes/commonAttributes.md#d2434e648)**

    Processors can also define custom, implementation-specific tokens for this attribute.

-   **[DTTCIMP-0080](../baseSpec/specification/langRef/attributes/commonAttributes.md#d2434t981)**

    The necessity and uses of `@encoding` for non-standard values of `@parse` are implementation-dependent.


## Aggregated RFC-2119 statements

-   **[DTTCREQ-0010](../archSpec/technicalContent/rendering-of-abbreviated-form-elements.md#d2366e45)**

    When a processor encounters an `<abbreviated-form>` element that references a DITA topic, if the referenced topic is not a `<glossentry>` topic or a specialization of `<glossentry>`, the title of the topic SHOULD be rendered.

-   **[DTTCREQ-0020](../archSpec/technicalContent/rendering-of-abbreviated-form-elements.md#d2366e60)**

    When a processor encounters an `<abbreviated-form>` element that references a DITA topic, if the referenced topic is a `<glossentry>` topic or a specialization of `<glossentry>`, processors SHOULD render the `<abbreviated-form>` element in the following ways:

    -   **First usage**

        Render the contents of the `<glossSurfaceForm>` element, if it is not empty. If the `<glossSurfaceForm>` is empty or does not exist, render the contents of the `<glossterm>` element.

    -   **Second and later usage**

        Render the contents of the `<glossAcronym>` element, if it is not empty. If the `<glossAcronym>` is empty or does not exist, render the contents of the `<glossterm>` element.

-   **[DTTCREQ-0030](../langRef/technicalContent/stepsection.md#d2606e60)**

    Processors which render the content of `<stepsection>` elements among the `<step>` elements MUST NOT number the `<stepsection>` elements.

-   **[DTTCREQ-0040](../langRef/technicalContent/equation-number.md#d2952t78)**

    When the `<equation-number>` element has empty content, the equation number SHOULD be generated.

-   **[DTTCREQ-0050](../langRef/technicalContent/equation-number.md#d2952t84)**

    When the `<equation-number>` element is not empty, the content SHOULD be used as the equation number.

-   **[DTTCREQ-0060](../langRef/technicalContent/equation-number.md#d2952t90)**

    Processors MAY add punctuation or decoration to the number.

-   **[DTTCREQ-0070](../langRef/technicalContent/mathmlref.md#d2458e119)**

    Processors SHOULD process the MathML as though the `<m:math>` element occurs directly in the content of the containing `<mathml>` element.

-   **[DTTCREQ-0080](../langRef/technicalContent/codeblock.md#d2378e47)**

    Processors SHOULD preserve line the breaks and spaces that are present in the content of a `<codeblock>` element.

-   **[DTTCREQ-0090](../langRef/technicalContent/msgblock.md#d2658e65)**

    Processors SHOULD preserve the line breaks and spaces that are present in the content of a `<msgblock>` element.

-   **[DTTCREQ-0100](../langRef/technicalContent/svgref.md#d2694e121)**

    Processors SHOULD process the SVG as though the `<svg>` element occurs directly in the content of the containing `<svg-container>` element.

-   **[DTTCREQ-0110](../langRef/technicalContent/menucascade.md#d2462e56)**

    Processors SHOULD separate the contents of the `<uicontrol>` elements in some manner to represent the menu cascade.

-   **[DTTCREQ-0120](../langRef/technicalContent/screen.md#d2362e42)**

    Processors SHOULD preserve the line breaks and spaces that are present in the content of a `<screen>` element.


