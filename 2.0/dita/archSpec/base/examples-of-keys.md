---
author: OASIS DITA Technical Committee
---

# Examples of keys

This section of the specification contains examples and scenarios. They illustrate a wide variety of ways that keys can be used.

-   **[Examples: Key definition](../../archSpec/base/example-key-definition.md)**  
The `<topicref>` element, and any specialization of `<topicref>` that allows the `@keys` attribute, can be used to define keys.
-   **[Examples: Key definitions for variable text](../../archSpec/base/example-key-definition-for-variable-text.md)**  
Key definitions can be used to store variable text, such as product names and user-interface labels. Depending on the key definition, the rendered output might have a link to a related resource.
-   **[Example: Duplicate key definitions within a single map](../../archSpec/base/example-resolution-of-duplicate-key-definitions.md)**  
In this scenario, a DITA map contains duplicate key definitions. How a processor finds the effective key definition depends on document order and the effect of filtering applied to the key definitions.
-   **[Example: Duplicate key definitions across multiple maps](../../archSpec/base/example-resolution-of-duplicate-key-definitions-multiple-maps.md)**  
In this scenario, the root map contains references to two submaps, each of which defines the same key. The effective key definition depends upon the document order of the direct URI references to the maps.
-   **[Example: Key definition with key reference](../../archSpec/base/example-keydef-with-keyref.md)**  
When a key definition also specifies a key reference, the key reference also must be resolved in order to determine the effective resources that are bound to that key definition.
-   **[Example: Link redirection](../../archSpec/base/example-key-use-for-link-redirection.md)**  
This scenario outlines how different authors can redirect links to a common topic by using key definitions. This could apply to `<xref>`, `<link>`, or any elements \(such as `<keyword>` or `<term>`\) that become navigation links.
-   **[Example: Link modification or removal](../../archSpec/base/example-keys-removing-link.md)**  
This scenario outlines how different authors can effectively remove or modify a `<link>` element in a shared topic.
-   **[Example: Links from term or keyword elements](../../archSpec/base/example-keys-links-to-terms.md)**  
The `@keyref` attribute enables authors to specify that references to keywords or terms in a DITA topic can be rendered as a link to an associated resource.
-   **[Example: conref redirection](../../archSpec/base/example-keys-conref-redirection.md)**  
The `@conkeyref` attribute enables authors to share DITA topics that reuse content. It also enables map authors to specify different key definitions for common keys.
-   **[Example: Keys and collaboration](../../archSpec/base/example-keys-splitting-combining-targets.md)**  
Keys enable authors to collaborate and work with evolving content with a minimum of time spent reworking topic references.

**Parent topic:**[Indirect key-based addressing](../../archSpec/base/key-based-addressing.md)

