---
author: [OASIS DITA Technical Committee, OASIS DITA Technical Committee]
---

# Example: How `<dvrResourcePrefix>` and `<dvrResourceSuffix>` interact with `<resourceid>`

In this scenario, a `<ditavalref>` element uses the nested `<dvrResourcePrefix>` and `<dvrResourceSuffix>` elements to resource IDs specified using `<resourceid>`.

The following code sample shows a simple branch with a parent and child topic, where the map branch uses `<dvrResourcePrefix>` to manage resource names. In this case the child topic also specifies a deliverable anchor with `<resourceid>`.

```
<topicref href="branch-01.dita">
  <ditavalref href="condition-01.ditaval">
    <ditavalmeta>
      <dvrResourcePrefix>cond01-</dvrResourcePrefix>
    </ditavalmeta>
  </ditavalref>
  <topicref href="topics/subtopic-01.dita">
    <topicmeta>
      <resourceid appid="ae35-unit-fault" appid-role="deliverable-anchor"/>
    </topicmeta>
  </topicref>
</topicref>
```

After the `<ditavalref>` is evaluated:

-   The effective file name of resource `branch-01.dita` is `cond01-branch-01.dita`.
-   The effective file name of the resource `topics/subtopic-01.dita` is `topics/cond01-subtopic-01.dita`.
-   The effective value of `@appid` on `<resourceid>` for the child topic is cond01-ae35-unit-fault.

The same concept applies when using `<dvrResourceSuffix>`. The map in this case uses the same structure as above, but uses `<dvrResourceSuffix>` to modify resource names:

```
<topicref href="branch-01.dita">
  <ditavalref href="condition-01.ditaval">
    <ditavalmeta>
      <dvrResourceSuffix>-cond01</dvrResourceSuffix>
    </ditavalmeta>
  </ditavalref>
  <topicref href="topics/subtopic-01.dita">
    <topicmeta>
      <resourceid appid="ae35-unit-fault" appid-role="deliverable-anchor"/>
    </topicmeta>
  </topicref>
</topicref>
```

After the `<ditavalref>` is evaluated:

-   The effective file name of resource `branch-01.dita` is `branch-01-cond01.dita`.
-   The effective file name of the resource `topics/subtopic-01.dita` is `topics/subtopic-01-cond01.dita`.
-   The effective value of `@appid` on `<resourceid>` for the child topic is ae35-unit-fault-cond01.

**Parent topic:**[Examples of branch filtering](../../archSpec/base/examples-of-branch-filter.md)

