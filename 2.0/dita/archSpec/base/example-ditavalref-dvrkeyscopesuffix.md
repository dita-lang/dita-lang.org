---
author: [OASIS DITA Technical Committee, OASIS DITA Technical Committee]
---

# Example: Using `<dvrKeyscopeSuffix>` to control key scope names

In this scenario, a `<ditavalref>` element uses the nested `<dvrKeyscopeSuffix>` element to control the names of key scopes within the filtered branch.

The following code sample shows how `<dvrKeyscopeSuffix>` supplements the existing key scope name of branch-01 to establish two new effective key scopes:

```
<topicref keys="branch-01"
    href="branch-01.dita" 
    keyscope="branch-01"
  >
  <ditavalref href="condition-01.ditaval">
    <ditavalmeta>
      <dvrResourcePrefix>firstcond-</dvrResourcePrefix>
      **&lt;dvrKeyscopeSuffix&gt;-green&lt;/dvrKeyscopeSuffix&gt;**
    </ditavalmeta>
  </ditavalref>
  <ditavalref href="condition-01.ditaval">
    <ditavalmeta>
      <dvrResourcePrefix>secondcond-</dvrResourcePrefix>
      **&lt;dvrKeyscopeSuffix&gt;-blue&lt;/dvrKeyscopeSuffix&gt;**
    </ditavalmeta>
  </ditavalref>
  <keydef keys="productName">
    <topicmeta><keytext>Acme's Best Microchip</keytext></topicmeta>
  </keydef>
  <topicref href="topics/subtopic-01.dita"/>
</topicref>
```

After the `<ditavalref>` elements are evaluated:

-   With two `<ditavalref>` elements, two effective copies of the branch are created.
-   For the first effective copy of the branch:
    -   The effective key scope is branch-01-green
    -   The effective file names of the resources in the branch are `firstcond-branch-01.dita` and `topics/firstcond-subtopic-01.dita`
-   For the second effective copy of the branch:
    -   The effective key scope is branch-01-blue
    -   The effective file names of the resources in the branch are `secondcond-branch-01.dita` and `topics/secondcond-subtopic-01.dita`

**Parent topic:**[Examples of branch filtering](../../archSpec/base/examples-of-branch-filter.md)

