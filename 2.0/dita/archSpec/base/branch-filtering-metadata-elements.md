---
author: [OASIS DITA Technical Committee, OASIS DITA Technical Committee]
---

# Using metadata elements in the DITAVAL-reference domain

Metadata within the `<ditavalref>` element makes it possible to control changes to resource names and key scope names, so that each distinct filtered copy can be referenced in a predictable manner.

The DITAVAL-reference domain defines four elements to control URI and key scope values within filtered map branches.

-   **`<dvrResourcePrefix>`**

    The `<dvrResourcePrefix>` element specifies the prefix to use when constructing the effective file names or resource IDs of the resources that are referenced from within the map branch that is implied by the ancestor `<ditavalref>` element. This enables a map author to specify a prefix that is added to the start of resource names for each eligible resource in the branch.

    For map branches that are processed with this element, the value of the `<dvrResourcePrefix>` element contributes to the effective file names and resource IDs of resources that are referenced within the branch. The effective resource file name starts with the value of the `<dvrResourcePrefix>` element.

    Some resources are not eligible for renaming, such as those marked with `scope="external"`.

    If a topic reference includes `<resourceid>` with the `@appid-role` attribute set to deliverable-anchor, the effective `@appid` value for that `<resourceid>` value starts with the value of the `<dvrResourcePrefix>` element.

-   **`<dvrResourceSuffix>`**

    The `<dvrResourceSuffix>` element specifies the suffix to use when constructing the effective file names or resource IDs of the resources that are referenced from within the map branch that is implied by the ancestor `<ditavalref>` element. This enables a map author to specify a suffix that is added to the end of resource names \(before any extension\) for each eligible resource in the branch.

    For map branches that are processed with this element, the value of the `<dvrResourceSuffix>` element contributes to the effective file names and resource IDs of the resources that are referenced within the branch. The base part of the effective resource file name ends with the value of the `<dvrResourceSuffix>` element. The base part of the resource file name consists of the portion of the file name after any directory information, and before any period followed by the file extension. For example, in the original file name `task/install.dita`, the base portion of the file name is "install".

    Some resources are not eligible for renaming, such as those marked with `scope="external"`.

    Path information is not valid in `<dvrResourceSuffix>`.

    If a topic reference includes `<resourceid>` with the `@appid-role` attribute set to deliverable-anchor, the effective `@appid` value for that `<resourceid>` value ends with the value of the `<dvrResourceSuffix>` element.

-   **`<dvrKeyscopePrefix>`**

    The `<dvrKeyscopePrefix>` element specifies the prefix to use when constructing the effective key scope names for the map branch that is implied by the ancestor `<ditavalref>` element. This enables a map author to specify a prefix that is added to the start of key scope names for each key scope in the branch. If no key scope is specified for the branch, this can be used to establish a new key scope, optionally combined with a value specified in `<dvrKeyscopeSuffix>`.

    For map branches that are processed with this element, the value of the `<dvrKeyscopePrefix>` element contributes to the effective key scope names of the branch. The effective key scope names start with the value of the `<dvrKeyscopePrefix>` element. Note that if the branch as authored does not specify a `@keyscope` value, specifying `<dvrKeyscopePrefix>` \(without also specifying `<dvrKeyscopeSuffix>`\) results in the branch establishing a key scope whose name is the value of the `<dvrKeyscopePrefix>` element. The full key scope names will also reflect the value of a `<dvrKeyscopeSuffix>` element if one is specified, regardless of whether the branch as authored specifies a `@keyscope` value.

-   **`<dvrKeyscopeSuffix>`**

    The `<dvrKeyscopeSuffix>` element specifies the suffix to use when constructing the effective key scope names for the map branch that is implied by the ancestor `<ditavalref>` element. This enables a map author to specify a suffix that is added to the end of key scope names for each key scope in the branch.

    For map branches processed with this element, the value of the `<dvrKeyscopeSuffix>` element contributes to the effective key scope names of the branch. The effective key scope names end with the value of the `<dvrKeyscopeSuffix>` element. Note that if the branch as authored does not specify a `@keyscope` value, specifying `<dvrKeyscopeSuffix>` \(without also specifying `<dvrKeyscopePrefix>`\) results in the branch establishing a key scope whose name is the value of the `<dvrKeyscopeSuffix>` element. The full key scope names will also reflect the value of a `<dvrKeyscopePrefix>` element if one is specified, regardless of whether the branch as authored specifies a `@keyscope` value.


For example, the previous code sample can be modified as follows to create predictable resource names and key scopes for the copy of the branch that is filtered using the conditions that are specified in `admin.ditaval`.

```
<topicref href="productFeatures.dita" keys="features" keyscope="prodFeatures">
  <ditavalref href="novice.ditaval"/>
  <ditavalref href="admin.ditaval">
    <ditavalmeta>
      <dvrResourcePrefix>admin-</dvrResourcePrefix>
      <dvrKeyscopePrefix>adminscope-</dvrKeyscopePrefix>
    </ditavalmeta>
  </ditavalref>
  <topicref href="newFeature.dita" keys="newThing"/>
</topicref>
```

The novice branch does not use any renaming, which allows it to be treated as the default copy of the branch. As a result, when the topics are filtered using the conditions that are specified in `novice.ditaval`, the resource names and key scope names are unmodified, so that references to the original resource name and key name will resolve to topics in the novice copy of the branch. This has the following effect on topics that are filtered using the conditions specified in `admin.ditaval`:

-   The prefix `admin-` is added to the beginning of each resource name in the admin branch.
    -   The resource `productFeatures.dita` becomes `admin-productFeatures.dita`
    -   The resource `newFeature.dita` becomes `admin-newFeature.dita`
-   The prefix `adminscope-` is added to the existing key scope "prodFeatures".
    -   The attribute value `keyref="adminscope-prodFeatures.features"` refers explicitly to the admin copy of `productFeatures.dita`
    -   The attribute `keyref="adminscope-prodFeatures.newThing"` refers explicitly to the admin copy of `newFeature.dita`

**Note:** In general, the best way to reference a topic that will be modified based on branch filtering is to use a key rather than a URI. Key scopes and key names \(including those modified based on the elements above\) are calculated by processors before they construct the effective map and key scope structure. This means that in the example above, a key reference to `adminscope-prodFeatures.features` will always refer explicitly to the instance of `productFeatures.dita` filtered against the conditions in `admin.ditaval`, regardless of whether a processor has performed the filtering yet. References that use the URI `productFeatures.dita` or `admin-productFeatures.dita` could resolve differently \(or fail to resolve\), as discussed in [Branch filtering: Implications of processing order](branch-filtering-implications-of-processing-order.md).

**Parent topic:**[Branch filtering: Impact on resource and key names](../../archSpec/base/branch-filtering-resource-names.md)

