---
author: OASIS DITA Technical Committee
---

# Example: Duplicate key definitions across multiple maps

In this scenario, the root map contains references to two submaps, each of which defines the same key. The effective key definition depends upon the document order of the direct URI references to the maps.

In the following example, a root map contains a key definition for the key "toner-specs" and references to two submaps.

```
<map>
  **&lt;keydef keys="toner-specs" href="toner-type-a-specs.dita"/&gt;**
  <mapref href="submap-01.ditamap"/>
  <mapref href="submap-02.ditamap"/>
</map>

```

The first submap, `submap-01.ditamap`, contains definitions for the keys "toner-specs" and "toner-handling":

```
<map>
  <keydef keys="toner-specs" href="toner-type-b-specs.dita"/>
  **&lt;keydef keys="toner-handling" href="toner-type-b-handling.dita"/&gt;**
</map>
```

The second submap, `submap-02.ditamap`, contains definitions for the keys "toner-specs", "toner-handling", and "toner-disposal":

```
<map>
  <keydef keys="toner-specs" href="toner-type-c-specs.dita"/>
  <keydef keys="toner-handling" href="toner-type-c-handling.dita"/>
  **&lt;keydef keys="toner-disposal" href="toner-type-c-disposal.dita"/&gt;**
</map>
```

For this example, the effective key definitions are listed in the following table.

|Key|Bound resource|
|---|--------------|
|toner-specs|`toner-type-a-specs.dita`|
|toner-handling|`toner-type-b-handling.dita`|
|toner-disposal|`toner-type-c-disposal.dita`|

The key definition for "toner-specs" in the root map is effective, because it is the first encountered in a breadth-first traversal of the root map. The key definition for "toner-handling" in `submap-01.ditamap` is effective, because submap-01 is included before submap-02 and so comes first in a breadth-first traversal of the submaps. The key definition for "toner-disposal" is effective because it is the only definition of the key.

**Parent topic:**[Examples of keys](../../archSpec/base/examples-of-keys.md)

