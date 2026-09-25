---
author: OASIS DITA Technical Committee
---

# Index overview

DITA provides several elements to enable indexing. Whether and how an index is rendered will vary based on implementation decisions and rendering formats.

Here are some definitions:

-   An index is a mapping from `<indexterm>` elements to locations in the DITA content.
-   A generated index is a mapping of index terms to rendered locations.

While DITA provides several elements that support indexing, how those elements are used will vary by implementation.

-   A publishing format like PDF might use a back-of-the-book style index with page numbers, which typically involves merging index elements and generating page numbers.
-   Another publishing format might have no rendered index, but it would instead use the content of index elements to help weight search results.
-   Some implementations might choose to supplement a generated index with additional content, such as treating a specialized `<keyword>` element as both normal content and an index entry.
-   Implementations might have different ways to render indexing edge cases, based on either implementation capabilities or style preferences.

While DITA defines markup for indexing and specifies exactly the point to which an `<indexterm>` refers, it cannot force DITA documents to use consistent patterns that work for all formats. Implementations should consider edge cases and how to treat them.

The following list includes some of the conditions that implementations might want to be aware of when considering how to generate an index:

-   Index processors typically ignore leading and trailing whitespace characters.
-   Processors might want to treat two entries separately if they are defined with different capitalization.
-   Processors need to determine how to handle nested markup, such as an `<keyword>` element that is located within an `<indexterm>` element.
-   Because `<index-see>` is used to refer to a term that is used *instead of* the current entry, processors should consider how to handle a case where an index term is used both as a page locator and with an `<index-see>` element for redirection.
-   Similarly, processors should consider how to handle the case where an index term is defined with both an `<index-see>` and an `<index-see-also>` element.

**Parent topic:**[Indexes](../../archSpec/base/indexes.md)

