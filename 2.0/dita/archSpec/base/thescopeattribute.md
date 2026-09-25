---
author: [OASIS DITA Technical Committee, OASIS DITA Technical Committee]
---

# The `@scope` attribute

The `@scope` attribute identifies the closeness of the relationship between the current document and the target resource.

The `@scope` attribute takes the following values:

-   **external**

    Indicates that the resource is not part of the current set of content.

-   **local**

    Indicates that the resource is part of the current set of content.

-   **peer**

    Indicates one of the following:

    -   The resource is part of the current set of content, but it might not be accessible at build time.
    -   The resource should be treated as a root map for the purpose of creating map-to-map key references \(peer maps\).
    -   The resource is a peer map. If `@keyscope` is also specified on the reference, it indicates that the map should be treated as a separate deliverable for the purposes of linking.
-   **-dita-use-conref-target**

    See [Using the -dita-use-conref-target value](ditauseconreftarget.md) for more information on -dita-use-conref-target


If no value is specified for the `@scope` attribute, the following considerations apply:

-   If the `@scope` attribute is specified on a containing element within a map or within the related-links section, the value cascades from the closest containing element.
-   In most cases, the processing default is local. However the processing default is external whenever the absolute URI in the `@href` attribute begins with one of the following schemes: http, https, ftp, or mailto

For the `@scope` attribute, processors can consider additional URI schemes as external by default. Processors MUST always consider relative URIs as local by default.

**Parent topic:**[DITA linking](../../archSpec/base/dita-linking.md)

