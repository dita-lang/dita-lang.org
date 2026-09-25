---
author: OASIS DITA Technical Committee
---

# Branch filtering: Impact on resource and key names

When map branches are cloned by a processor in order to support multiple condition sets, processors must manage conflicting resource and key names. The DITAVAL-reference domain includes metadata elements that authors can use to specify how resource and key names are renamed.

**Note:** While the processing controls that are described here are intended primarily for use with map branches that specify multiple condition sets, they also can be used with map branches that include only a single `<ditavalref>` element.

When a map branch uses multiple condition sets, processors create multiple effective copies of the branch to support the different conditions. This results in potential conflicts for resource names, key names, and key scopes. Metadata elements inside of the `<ditavalref>` element are available to provide control over these values, so that keys, key scopes, and URIs can be individually referenced within a branch.

For example, the following map branch references two DITAVAL documents:

```
<topicref href="productFeatures.dita" keys="features" keyscope="prodFeatures">
  <ditavalref href="novice.ditaval"/>
  <ditavalref href="admin.ditaval"/>
  <topicref href="newFeature.dita" keys="newThing"/>
</topicref>
```

In this case, the processor has two effective copies of `productFeatures.dita` and `newFeature.dita`. One copy of each topic is filtered using the conditions specified in `novice.ditaval`, and the other copy is filtered using the conditions specified in `admin.ditaval`.

If an author has referenced a topic using `keyref="features"` or `keyref="prodFeatures.features"`, a processor cannot distinguish which filtered copy is the intended target. The metadata elements in the DITAVALref domain provide a way to control this scenario.

-   **[Using metadata elements in the DITAVAL-reference domain](../../archSpec/base/branch-filtering-metadata-elements.md)**  
Metadata within the `<ditavalref>` element makes it possible to control changes to resource names and key scope names, so that each distinct filtered copy can be referenced in a predictable manner.
-   **[Renaming based on multiple ditavalref elements](../../archSpec/base/branch-filtering-renaming-multiple-times.md)**  
It is possible for a branch with `<ditavalref>` already in effect to specify an additional `<ditavalref>`, where each `<ditavalref>` includes renaming metadata.
-   **[Handling resource name conflicts caused by branch filtering](../../archSpec/base/branch-filtering-handling-conflicts.md)**  
It is possible to construct a root map where the branch filtering mechanism results in resource name conflicts.

**Parent topic:**[Branch filtering](../../archSpec/base/branch-filtering.md)

