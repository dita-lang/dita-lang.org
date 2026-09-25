---
author: OASIS DITA Technical Committee
---

# How filtering rules interact

With branch filtering, it is possible to set include or exclude rules globally, within a map, and within an already filtered map branch. The general rule for conflicts is that once specified, "exclude" conditions are in effect for the entire map or branch.

Filtering rules often are specified globally in a conditional processing profile, outside of the content. When global conditions set a property value to "exclude", that setting overrides any other settings for the same property that are specified at a branch level. Global conditions that set a conditional property to "include" or "flag" do not override branch-level conditions that set the same property to "exclude".

Using `<ditavalref>` elements, it is possible to specify one set of conditions for a branch and another set of conditions for a subset of the branch. As with global conditions, properties set to "exclude" for a map branch override any other settings for the same property specified for a subset of the branch. This is true regardless of how the "exclude" condition is specified; for example, it can be set using a rule for the specific attribute and value, or it can be set using a default "exclude" action. Branch conditions that set a conditional property to "include" or "flag" do not override conditions on a subset of the branch that explicitly set the same property to "exclude".

**Parent topic:**[Branch filtering](../../archSpec/base/branch-filtering.md)

