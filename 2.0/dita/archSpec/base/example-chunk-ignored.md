---
author: OASIS DITA Technical Committee
---

# Example: When `@chunk` is ignored

The `@chunk` attribute is ignored in some cases, such as when `chunk="combine"` is already in effect or when `chunk="split"` is specified on a grouping element.

In the following code sample, evaluating `chunk="combine"` results in one rendered document for each map branch. Any additional `@chunk` values within those branches are ignored, including any `@chunk` values within any referenced maps.

```
<map>
  <title>Ignoring chunking when already combined</title>

  <topicref href="branchOne.dita" **chunk="combine"**>
    <!-- @chunk ignored for branchOneChild.dita -->
    <topicref href="branchOneChild.dita" **chunk="split"**/>
  </topicref>

  <topicref href="branchTwo.dita" **chunk="combine"**>
    <!-- Any @chunk within submap.ditamap is ignored -->
    <topicref href="submap.ditamap" format="ditamap"/>
  </topicref>

</map>
```

In the following code sample, `chunk="split"` is specified on two grouping elements.

```
<map>
  <title>Trying to "split" groups</title>
  <topicgroup **chunk="split"**>
    <topicref href="ingroup1.dita"><!--...--></topicref>
    <topicref href="ingroup2.dita"><!--...--></topicref>
  </topicgroup>
  <topichead **chunk="split"**>
    <topicmeta>
      <navtitle>Heading for a branch</navtitle>
    </topicmeta>
    <topicref href="inhead1.dita"><!--...--></topicref>
    <topicref href="inhead2.dita"><!--...--></topicref>
  </topichead>
</map>
```

The result of evaluating chunking is the following:

-   The `@chunk` attribute on the `<topicgroup>` element is ignored. The `@chunk` attribute does not cascade and there is no referenced topic, so it has no effect.
-   In some cases, an implementation might treat the `<topichead>` element as equivalent to a single title-only topic, while in other cases it might be ignored. In either case, the `@chunk` value has no effect. If the `<topichead>` is treated as a title-only topic, it cannot be split further. If it is ignored for the current processing context, it is no different than the `<topicgroup>` element.

**Parent topic:**[Examples of the chunk attribute](../../archSpec/base/examples-of-chunking.md)

