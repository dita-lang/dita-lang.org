---
author: [OASIS DITA Technical Committee, OASIS DITA Technical Committee]
---

# Example: Using `<dvrResourcePrefix>` to control resource names

In this scenario, a `<ditavalref>` element uses the nested `<dvrResourcePrefix>` element to control the names of resources within the filtered branch.

The following code sample shows a simple branch with a parent and child topic, where the branch uses a `<ditavalref>` element and `<dvrResourcePrefix>`.

```
<topicref href="branch-01.dita">
  <ditavalref href="condition-01.ditaval">
    <ditavalmeta>
      <dvrResourcePrefix>cond01-</dvrResourcePrefix>
    </ditavalmeta>
  </ditavalref>
  <topicref href="topics/subtopic-01.dita"/>
</topicref>
```

After the `<ditavalref>` is evaluated:

-   The effective file name of resource `branch-01.dita` is `cond01-branch-01.dita`.
-   The effective file name of the resource `topics/subtopic-01.dita` is `topics/cond01-subtopic-01.dita`.

**Parent topic:**[Examples of branch filtering](../../archSpec/base/examples-of-branch-filter.md)

