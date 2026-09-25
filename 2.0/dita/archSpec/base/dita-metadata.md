---
author: OASIS DITA Technical Committee
---

# DITA metadata

Metadata can be applied in both DITA topics and DITA maps. Metadata that is specified in DITA topics can be supplemented or overridden by metadata that is assigned in a DITA map. This design facilitates the reuse of DITA topics in different DITA maps and use-specific contexts.

DITA defines a core set of metadata elements to cover a variety of common scenarios. Because metadata requirements vary so widely, it is expected that few implementations will use the full range of these elements.

DITA also provides two generic elements, `<data>` and `<othermeta>`, which are intended for use when the core metadata elements do not provide the correct semantic. In addition, `<data>` is especially useful as a specialization base.

Requirements for rendering metadata vary widely. For that reason, any rendering of metadata in published content is left up to implementations.

-   **[Metadata elements](../../archSpec/base/metadata-elements.md)**  
Metadata elements are available in both topics and DITA maps. This design enables authors and information architects to use identical metadata markup in both topics and maps.
-   **[Metadata attributes](../../archSpec/base/metadata-attributes.md)**  
Metadata attributes specify properties of the content that can be used to determine how the content is processed. Specialized metadata attributes can be defined to enable specific business-processing needs, such as semantic processing and data mining.
-   **[Metadata in maps and topics](../../archSpec/base/metadata-in-maps-and-topics.md)**  
Metadata can be specified in both maps and topics. In most cases, metadata in the map either supplements or overrides metadata that is specified at the topic level.
-   **[Window metadata for user assistance](../../archSpec/base/help-systems-and-other-user-assistance.md)**  
Some user assistance topics might need to be displayed in a specific window or viewport, and this windowing metadata can be defined in the DITA map within the `<ux-window>` element.

**Parent topic:**[Overview of DITA](../../archSpec/base/introduction-to-dita.md)

