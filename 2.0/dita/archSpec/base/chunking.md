---
author: OASIS DITA Technical Committee
---

# Chunking

Content often needs to be delivered in a different granularity than it is authored. The `@chunk` attribute enables map authors to specify that multiple source documents should be combined into a single document for delivery or that a single source document should be split into multiple documents for delivery.

-   **[About the chunk attribute](../../archSpec/base/chunk-attribute-overview.md)**  
The `@chunk` attribute specifies how a processor should split or combine source DITA documents into alternate organizational schemes for rendering purposes. This means that the `@chunk` attribute is only relevant when the organization of source DITA documents has an effect on the organization of published documents.
-   **[Processing chunk="combine"](../../archSpec/base/chunk-attribute-combine.md)**  
The presence of `chunk="combine"` instructs a processor to combine the referenced source documents for rendering purposes.
-   **[Processing chunk="split"](../../archSpec/base/chunk-attribute-split.md)**  
The presence of `chunk="split"` instructs a processor to split each topic from the referenced source document into its own document for rendering purposes.
-   **[Using the chunk attribute for other purposes](../../archSpec/base/chunk-attribute-other-tokens.md)**  
Applications can define additional tokens for use in the `@chunk` attribute. These tokens are implementation dependent and might not be supported by other applications.
-   **[Examples of the chunk attribute](../../archSpec/base/examples-of-chunking.md)**  
These examples illustrate the processing expectations for various scenarios that involve the `@chunk` attribute. The processing examples use either before and after sample markup or expanded syntax that shows the equivalent markup without the `@chunk` attribute.

**Parent topic:**[DITA processing](../../archSpec/base/ditaprocessing.md)

