---
author: OASIS DITA Technical Committee
---

# Example: Using `chunk="combine"` when the root map specifies `chunk="split"`

While `@chunk` attributes are ignored when `chunk="combine"` is already in effect, it is possible to use `chunk="combine"` when `chunk="split"` is in effect.

Consider the following DITA map, where `chunk="split"` is specified on the root element. The effect of this operation is that all topic documents within the map structure are split by default. However, a map branch also specifies `chunk="combine"`:

```
<map **chunk="split"**>
  <title>Split most, but not one branch</title>
  <topicref href="splitme.dita">
    <!-- More topic references -->
  </topicref>
  <topicref href="exception.dita" **chunk="combine"**>
    <!-- More topic references -->
  </topicref>
  <topicref href="splitmetoo.dita">
    <!-- More topic references -->
  </topicref>
&lt;/map&gt;
```

Assume also that no other `@chunk` attributes are specified in the map.

The following points are true when `@chunk` is evaluated:

-   The document `splitme.dita` is rendered as one result document for each topic.. The same is true for any other topic document within the map branch.
-   The second map branch, where the outermost `<topicref>` elements references `exception.dita`,is rendered as a single result document that combines all topic documents within the map branch.
-   The document `splitmetoo.dita` is rendered as one result document for each topic.. The same is true for any other topic document within the map branch.

**Parent topic:**[Examples of the chunk attribute](../../archSpec/base/examples-of-chunking.md)

