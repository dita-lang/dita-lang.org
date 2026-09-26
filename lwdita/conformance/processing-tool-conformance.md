---
author: OASIS DITA Technical Committee
---

# Processing tool conformance

Specifies conformance requirements for tools that process Lightweight DITA content, typically for publishing or rendering, but possibly for other content-driven processes.

Processing tools that claim conformance to Lightweight DITA should meet the mandatory and optional requirements specified here with no, or only trivial, configuration.

Tools that process Lightweight DITA content MUST:

-   Validate XDITA topic and map content, and report XDITA validation errors.
-   Follow the Processing Expectations and Rendering Expectations sections of this specification for each Lightweight DITA component.
-   Aggregate topic collections as defined by XDITA, MDITA, and HDITA maps, following the rules and limitations for each authoring format. Specifically, XDITA maps may aggregate XDITA, MDITA, and HDITA topics. MDITA maps need only aggregate MDITA topics. HDITA maps need only aggregate HDITA topics.

Tools that process Lightweight DITA MAY:

-   Identify and report HDITA and MDITA components that do not comprise legal HDITA or MDITA content. Cessation of processing is an acceptable response when a processing tool encounters such content. However, processing tools are encouraged to attempt graceful degradation on encountering HDITA or MDITA topic or map content that does not conform to the rules of this specification.

**Parent topic:**[Conformance](../conformance/conformance.md)

