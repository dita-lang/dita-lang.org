---
author: OASIS DITA Technical Committee
---

# DITA addressing

DITA addressing defines how DITA content identifies and references resources. References within DITA either are direct URI-based addresses, or they are indirect key-based addresses. This section covers how to identify elements so that they can be referenced and how to use attributes when linking. It also covers how to process keys and key scopes when resolving indirect links, variable text, and more.

-   **[id attribute](../../archSpec/base/id.md)**  
The `@id` attribute assigns an identifier to DITA elements so that the elements can be referenced.
-   **[DITA linking](../../archSpec/base/dita-linking.md)**  
DITA supports many different linking elements, but they all use the same set of attributes: `@format`, `@href`, `@scope`, and `@type`. These four attributes act as a unit.
-   **[URI-based \(direct\) addressing](../../archSpec/base/uri-based-addressing.md)**  
Content reference and link relationships can be established from DITA elements by using URI references. DITA uses URI references in `@href`, `@conref`, and other attributes for all direct addressing of resources.
-   **[Indirect key-based addressing](../../archSpec/base/key-based-addressing.md)**  
DITA keys provide an alternative to direct addressing. The key reference mechanism provides a layer of indirection so that resources can be defined at the DITA map level instead of locally in each topic. Those resources can include URIs, metadata, variable text strings, and more.
-   **[Context hooks for user assistance](../../archSpec/base/context-hooks-for-user-assistance.md)**  
Context hook information can be specified in the `<resourceid>` element in a DITA map or DITA topic. This enables processors to generate the support files that are required to integrate the user assistance with a specific application.

