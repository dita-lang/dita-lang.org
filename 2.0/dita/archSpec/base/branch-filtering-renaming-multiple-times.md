---
author: OASIS DITA Technical Committee
---

# Renaming based on multiple `<ditavalref>` elements

It is possible for a branch with `<ditavalref>` already in effect to specify an additional `<ditavalref>`, where each `<ditavalref>` includes renaming metadata.

When resource renaming metadata is specified at multiple levels of a branch, the prefixes and suffixes are combined. Values specified by a more deeply nested `<ditavalref>` element appear closer to the original resource name.

## Example

For example, the following code sample has two `<ditavalref>` elements with resource renaming metadata at different levels of the same branch:

```
<topicref href="branchParent.dita">
  <ditavalref href="parent.ditaval">
    <ditavalmeta>
      <dvrResourcePrefix>parentPrefix-</dvrResourcePrefix>
    </ditavalmeta>
  </ditavalref>
  <!-- additional topics or layers of nesting -->
  <topicref href="branchChild.dita">
    <ditavalref href="child.ditaval">
      <ditavalmeta>
        <dvrResourcePrefix>childPrefix-</dvrResourcePrefix>
      </ditavalmeta>
    </ditavalref>
    <!-- ... -->
  </topicref>
</topicref>
```

In this situation, the resource `branchChild.dita` is given a prefix based on both the reference to `parent.ditaval` and the reference to `child.ditaval`. The value childPrefix- is specified in the `<ditavalref>` that is nested more deeply within the branch, so it appears closer to the original resource name. The resource `branchChild.dita` would result in `parentPrefix-childPrefix-branchChild.dita`. Suffixes \(if specified\) would be added in a similar manner, resulting in a name like `branchChild-childSuffix-parentSuffix.dita`. Note that the hyphens in these examples are part of the specified prefix and suffix values; they are not added automatically.

## Example

In the following example, metadata in the `<ditavalref>` is used to rename key scopes rather than resources.

```
<topicref href="branchParent.dita" keyscope="branchscope">
  <ditavalref href="parent.ditaval">
    <ditavalmeta>
      <dvrKeyscopePrefix>parentPrefix-</dvrKeyscopePrefix>
    </ditavalmeta>
  </ditavalref>
  <!-- additional topics or layers of nesting -->
  <topicref href="branchChild.dita">
    <ditavalref href="child.ditaval">
      <ditavalmeta>
        <dvrKeyscopePrefix>childscope</dvrKeyscopePrefix>
      </ditavalmeta>
    </ditavalref>
    <!-- ... -->
  </topicref>
</topicref>
```

In this example, the scope name branchscope is modified with a key scope prefix to make parentPrefix-branchscope. The child branch has no authored `@keyscope` attribute, so the key scope prefix at that level creates a new scope named childscope. This scope is nested within the scope parentPrefix-branchscope, creating the qualified scope name parentPrefix-branchscope.childscope that can be used to reference keys defined inside of that child branch.

**Parent topic:**[Branch filtering: Impact on resource and key names](../../archSpec/base/branch-filtering-resource-names.md)

