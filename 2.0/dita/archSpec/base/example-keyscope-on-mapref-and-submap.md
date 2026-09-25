---
author: OASIS DITA Technical Committee
---

# Example: Key scopes specified on both the map reference and the root element of the submap

In this scenario, a key scope is defined both on a reference to a nested map, and on the root element of that nested map.

Consider the following DITA maps:

```
<map>
  <mapref keyscope="A" href="installation.ditamap"/>
  <!-- ... -->
</map>
```

```
<map keyscope="B">
  <!-- ... -->
</map>
```

Only one key scope is created; it has key scope names of "A" and "B".

**Parent topic:**[Examples of scoped keys](../../archSpec/base/examples-of-scoped-keys.md)

