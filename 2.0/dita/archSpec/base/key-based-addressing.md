---
author: OASIS DITA Technical Committee
---

# Indirect key-based addressing

DITA keys provide an alternative to direct addressing. The key reference mechanism provides a layer of indirection so that resources can be defined at the DITA map level instead of locally in each topic. Those resources can include URIs, metadata, variable text strings, and more.

For information about using keys to define and reference controlled values, see [Subject scheme maps and their usage](subject-scheme-maps-and-usage.md).

-   **[Core concepts for working with keys](../../archSpec/base/keys-core-concepts.md)**  
 The concepts described below are critical for a full understanding of keys and key processing.
-   **[Setting key names with the keys attribute](../../archSpec/base/thekeysattribute.md)**  
A `@keys` attribute consists of one or more space-separated keys. Map authors define keys using a `<topicref>` or `<topicref>` specialization that contains the `@keys` attribute. Each key definition introduces an identifier for a resource referenced from a map. Keys resolve to the resources given as the `@href` value on the key definition `<topicref>` element, to content contained within the key definition `<topicref>` element, or both.
-   **[Referencing a key with the keyref attribute](../../archSpec/base/thekeyrefattribute.md)**  
The `@keyref` attribute provides an indirect, late-bound reference to topics, to collections of topics \(ditabase\), to maps, to referenceable portions of maps, to non-DITA documents, to external URIs, or to XML content contained within a key definition topic reference. When the DITA content is processed, the key references are resolved using key definitions from DITA maps.
-   **[Using keys for addressing](../../archSpec/base/using-keys-for-addressing.md)**  
For topic references, image references, and other link relationships, resources can be indirectly addressed by using the `@keyref` attribute. For content reference relationships, resources can be indirectly addressed by using the `@conkeyref` attribute.
-   **[Scoping keys with the keyscope attribute](../../archSpec/base/keyScopes.md)**  
Key scopes enable map authors to specify different sets of key definitions for different map branches.
-   **[Addressing keys across scopes](../../archSpec/base/using-keys-to-address-keys-across-scopes.md)**  
When referencing key definitions that are defined in a different key scope, key names might need to be qualified with key scope names.
-   **[Cross-deliverable addressing and linking](../../archSpec/base/links-between-maps.md)**  
A map can use scoped keys to reference keys that are defined in a different root map. This cross-deliverable addressing can support the production of deliverables that contain working links to other deliverables.
-   **[Processing key references](../../archSpec/base/processing-key-references-general.md)**  
Key references can resolve as links, as text, or as both. Within a map, they also can be used to create or supplement information on a topic reference. This topic covers information that is common to all key processing, regardless of how the key is used.
-   **[Processing key references for navigation links and images](../../archSpec/base/processing-keyref-for-links.md)**  
Keys can be used to create or redirect links and cross references. Keys also can be used to address resources such as images or videos. This topic explains how to evaluate key references on links and cross references to determine a link target.
-   **[Processing key references on topicref elements](../../archSpec/base/processing-keyref-on-topicref.md)**  
While `<topicref>` elements are used to define keys, they also can reference keys that are defined elsewhere. This topic explains how to evaluate key references on `<topicref>` elements and its specializations.
-   **[Processing key references to generate text or link text](../../archSpec/base/processing-keyref-for-text.md)**  
Variable text can be specified by key definitions. Processors determine the effective text by retrieving the content of elements in a specific sequence.
-   **[Examples of keys](../../archSpec/base/examples-of-keys.md)**  
This section of the specification contains examples and scenarios. They illustrate a wide variety of ways that keys can be used.
-   **[Examples of scoped keys](../../archSpec/base/examples-of-scoped-keys.md)**  
This section of the specification contains examples and scenarios. They illustrate how scoped keys can be used.

**Parent topic:**[DITA addressing](../../archSpec/base/ditaaddressing.md)

