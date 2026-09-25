---
author: OASIS DITA Technical Committee
---

# Index ranges

Authors can use the `@start` and `@end` attributes on a pair of `<indexterm>` elements to index an extended discussion. The generated index entry reflects the span between the two `<indexterm>` elements.

The start of an index range is indicated by an `<indexterm>` with a `@start` attribute. This is called a start-of-range element.

The end of an index range is indicated by an `<indexterm>` element with an `@end` attribute with a value that matches the `@start` attribute on the start element. This is called an end-of-range element. End-of-range element should contain no content or nested elements.

The start-of-range and end-of-range elements must be leaf `<indexterm>` elements. If part of a multilevel index entry, the start-of-range and end-of-range elements must be at the same level of the hierarchy.

The location of the `<indexterm>` elements determines how the range is defined:

-   **Topic body**

    The start-of-range and end-of-range elements are in the body of the same DITA topic. The range is defined as between two point references in the DITA topic. If an end-of-range element does not exist within the same topic body, the start-of-range element is treated as a point reference rather than as the start of a range.

-   **Topic prolog**

    The start-of-range and end-of-range elements are in the prolog of the same DITA topic. The range is defined as being between the title of the DITA topic and the end of the last nested topic. If an end-of-range element does not exist within the topic prolog, the start-of-range element is treated as a point reference rather than as the start of a range.

-   **DITA map**

    The start-of-range and end-of-range elements are contained within topic references in the same DITA map. If an end-of-range element does not exist within the same map, the start-of-range element is treated as a point reference rather than as the start of a range.


Processors that support index ranges SHOULD do the following:

-   Match `@start` and `@end` attributes by a character-by-character comparison with all characters significant and no case folding occurring.
-   Ignore `@start` and `@end` attributes if they occur on an `<indexterm>` element that has child `<indexterm>` elements.
-   Handle an end-of-range `<indexterm>` element that is nested within one or more `<indexterm>` elements. The end-of-range `<indexterm>` element should have no content of its own; if it contains content, that content is ignored.

    **Draft comment:**Kristen J Eberlein   
    

    Can we improve the phrasing of the two above list items? Robert and I think that they were authored in order to communicate that if you want a range to be specified for a secondary entry, it has to be done like this:

    ```
    <indexterm>Potato
      <indexterm start="yellow">Yellow potatoes</indexterm>
    </indexterm>
    
    <indexterm>Potato
      <indexterm end="yellow"/>
    <indexterm>
    ```

    **Draft comment:**robander   
    TO RESOLVE 12 May 2026: Try to come up with a simple wording tweak to describe it based on our understanding from long ago

-   When index ranges with the same identifier overlap, the effective range is determined by matching the earliest start-of-range element from the set of overlapping ranges with the latest end-of-range element from the set of overlapping ranges.
-   An unmatched start-of-range element is treated as a simple `<indexterm>`element.
-   Ignore unmatched end-of-range `<indexterm>` elements.

**Parent topic:**[Indexes](../../archSpec/base/indexes.md)

