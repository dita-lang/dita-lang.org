---
author: OASIS DITA Technical Committee
---

# Examples of content referencing

This section contains examples and scenarios that illustrate the use and processing of `@conref`, `@conkeyref`, and related content-referencing attributes.

-   **[Example: Simple conref usage](../../archSpec/base/example-conref-simple.md)**  
In this scenario, a `@conref` attribute is used to pull content from the referenced element in another topic.
-   **[Example: Simple conkeyref usage](../../archSpec/base/example-conref-conkeyref.md)**  
In this scenario, a `@conkeyref` attribute is used as an indirect reference to pull content from the referenced element in another topic.
-   **[Example: Reusing a sequence of list items](../../archSpec/base/example-conref-range-list.md)**  
In this scenario, a `@conref` and `@conrefend` are used to reference a range of list items.
-   **[Example: Reusing a sequence of elements of different types](../../archSpec/base/example-conref-range-blocks.md)**  
In this scenario, a `@conref` and `@conrefend` are used to reference a range of block elements that do not have the same element type.
-   **[Example: Reusing a range with conkeyref](../../archSpec/base/example-conref-range-conkeyref.md)**  
In this scenario, a `@conkeyref` is used to define the start of a range and `@conrefend` is used to define the end of a range.
-   **[Example: Using conaction to replace content](../../archSpec/base/example-conref-conaction-replace.md)**  
In this scenario, a `@conref` and `@conaction` are used to replace content in another topic.
-   **[Example: Using conaction to push content before another element](../../archSpec/base/example-conref-conaction-pushbefore.md)**  
In this scenario, a `@conref` and `@conaction` are used to push content before an element in another topic.
-   **[Example: Using conaction to push content after another element](../../archSpec/base/example-conref-conaction-pushafter.md)**  
In this scenario, a `@conref` and `@conaction` are used to push content after an element in another topic.
-   **[Example: Resolving conrefs to elements that contain cross references](../../archSpec/base/example-conref-includes-xref.md)**  
In this scenario, elements referenced by conref include cross references using a variety of referencing styles.
-   **[Example: Resolving conrefs to elements that contain cross references, with key scopes](../../archSpec/base/example-conref-includes-xref-and-keyscope.md)**  
In this scenario, elements referenced by conref include cross references using a variety of referencing styles. The topics themselves are used in a map that makes use of key scopes.
-   **[Example: Using the -dita-use-conref-target value](../../archSpec/base/example-conref-ditauseconreftarget.md)**  
In this scenario, an element in a map is reused, with some of the attributes resolved using the -dita-use-conref-target token.

**Parent topic:**[Content reference \(conref\)](../../archSpec/base/conref.md)

