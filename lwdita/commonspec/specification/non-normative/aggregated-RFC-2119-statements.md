---
author: OASIS DITA Technical Committee
---

# Aggregated RFC-2119 statements

This appendix contains all the normative statements from the LwDITA specification. They are aggregated here for convenience in this non-normative appendix.

## Aggregated error statements

-   **[LWDTERR-0010](../../../components/lw-section.md#d860e73)**

    Processors SHOULD treat the presence of more than one title component in a section component as an error.


## Implementation dependent statements

-   **[LWDTIMP-0010](../../../components/lw-fn.md#d1137e170)**

    However, the details of footnote processing and formatting are implementation dependent.


## Aggregated RFC-2119 statements

-   **[LWDTREQ-0010](../../../components/lw-shortdesc.md#d1062e63)**

    Processors SHOULD render the content of the `<shortdesc>` element as the initial paragraph of the topic.

-   **[LWDTREQ-0020](../../../components/lw-title.md#d868e51)**

    `<h1>` and `<title>` for [topic](../../../lw-topic.md) \(The content for Title in an HDITA topic MUST map to both `<title>` and `<h1>`\).

-   **[LWDTREQ-0030](../../../components/lw-desc.md#d1042e144)**

    When used in conjunction with figures, processors SHOULD consider the content of description components to be part of the content flow.

-   **[LWDTREQ-0040](../../../components/lw-note.md#d740e68)**

    Processors SHOULD render a label for notes.

-   **[LWDTREQ-0050](../../../components/lw-pre.md#d1123e64)**

    Processors SHOULD preserve the line breaks and spaces that are present in preformatted text.

-   **[LWDTREQ-0060](../../../components/lw-section.md#d860e73)**

    Processors SHOULD treat the presence of more than one title component in a section component as an error.

-   **[LWDTREQ-0070](../../../components/lw-data.md#d553e123)**

    By default, processors SHOULD treat a data component as unknown metadata.

-   **[LWDTREQ-0080](../../../components/lw-data.md#d553t127)**

    The contents of the data component SHOULD NOT be rendered.

-   **[LWDTREQ-0090](../../../components/lw-data.md#d553e132)**

    Processors that recognize a particular data component MAY make use of it to trigger specialized rendering.

-   **[LWDTREQ-0100](../../../components/lw-audio.md#d1106e115)**

    When an audio resource cannot be rendered in a meaningful way, processors SHOULD present the contents of the `<fallback>` element, if it is present.

-   **[LWDTREQ-0110](../../../components/lw-video.md#d978e118)**

    Processors SHOULD scale the video resource when values are provided for the `@height` and `@width` attributes.

-   **[LWDTREQ-0120](../../../components/lw-video.md#d978e131)**

    If a height value is specified and no width value is specified, processors SHOULD scale the width by the same factor as the height.

-   **[LWDTREQ-0130](../../../components/lw-video.md#d978e137)**

    If a width value is specified and no height value is specified, processors SHOULD scale the height by the same factor as the width.

-   **[LWDTREQ-0140](../../../components/lw-video.md#d978e143)**

    If both a height value and width value are specified, implementations MAY ignore one of the two values when they are unable to scale to each direction using different factors.

-   **[LWDTREQ-0150](../../../components/lw-video.md#d978e150)**

    When a video resource cannot be rendered in a meaningful way, processors SHOULD render the contents of the `<fallback>` element, if it is present.

-   **[LWDTREQ-0160](../../../conformance/conformance-for-xdita-authoring-applications.md#d919e11)**

    An application that supports XDITA authoring MUST:

    -   Constrain the set of available elements and attributes to those defined by this specification, with no or minimal configuration required.
    -   Generate valid LwDITA topics.
    -   Support authors in authoring valid XDITA maps, to define sets of LwDITA \(XDITA, HDITA, or MDITA\) topics.
-   **[LWDTREQ-0170](../../../conformance/conformance-for-xdita-authoring-applications.md#d919e28)**

    An application that supports XDITA authoring MAY:

    -   Support authors, possibly in a graphical user interface, in setting the @props filtering attribute.
    -   Support authors, possibly in a graphical user interface, in inserting valid content references.
    -   Show or preview representations of XDITA topics with content references resolved and filtering applied.
    -   keyref? authoring support preview?
-   **[LWDTREQ-0180](../../../conformance/conformance-for-hdita-authoring-applications.md#d1070e14)**

    Applications that support HDITA authoring MAY:

    -   Provide guided authoring for HDITA topics, by presenting HDITA components in valid order and number.
    -   Support authors in inserting valid HDITA components.
    -   Limit authors to HDITA components of HTML5, or flag components that, while valid according to the HTML spec, are not legal in HDITA topics. \(must\)
    -   Support authors in authoring HDITA maps to define sets of HDITA topics.
-   **[LWDTREQ-0190](../../../conformance/conformance-for-mdita-authoring-applications.md#d770e11)**

    Applications that support MDITA authoring MAY: in addition to being an Mdown editor...

    -   Provide guided authoring for MDITA topics, by presenting MDITA components in valid order and number.
    -   Support authors in inserting components from the MDITA extended profile, where necessary, to use Lightweight DITA features that are not available in the MDITA core profile.
    -   Limit authors to components of GitHub Flavored Markdown that are legal in MDITA core profile topics, or flag components that are not legal in MDITA topics.
    -   Support authors in authoring MDITA maps to define sets of MDITA topics.
-   **[LWDTREQ-0200](../../../conformance/processing-tool-conformance.md#d526e15)**

    Tools that process Lightweight DITA content MUST:

    -   Validate XDITA topic and map content, and report XDITA validation errors.
    -   Follow the Processing Expectations and Rendering Expectations sections of this specification for each Lightweight DITA component.
    -   Aggregate topic collections as defined by XDITA, MDITA, and HDITA maps, following the rules and limitations for each authoring format. Specifically, XDITA maps may aggregate XDITA, MDITA, and HDITA topics. MDITA maps need only aggregate MDITA topics. HDITA maps need only aggregate HDITA topics.
-   **[LWDTREQ-0210](../../../conformance/processing-tool-conformance.md#d526e32)**

    Tools that process Lightweight DITA MAY:

    -   Identify and report HDITA and MDITA components that do not comprise legal HDITA or MDITA content. Cessation of processing is an acceptable response when a processing tool encounters such content. However, processing tools are encouraged to attempt graceful degradation on encountering HDITA or MDITA topic or map content that does not conform to the rules of this specification.

