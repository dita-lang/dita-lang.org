---
author: OASIS DITA Technical Committee
---

# Example: Key scopes and cross deliverable linking

Scoped references to a peer map can be used to establish cross deliverable links. When a processor has access to they keys in that peer map, it can use that information to set up cross deliverable links.

Consider the following DITA maps `map-a.ditamap` and `map-b.ditamap`. In this example, `map-b.ditamap` is not a submap of Map A, it is a peer map. Map A designates Map B as a peer map by using the following markup:

```
<map>
  <title>Map A</title>
  <topicref 
    scope="peer"
    format="ditamap"
    keyscope="map-b"
    href="../map-b/map-b.ditamap"
    processing-role="resource-only"
  />
  <!-- ... -->
</map>
```

In the scenario above, a key reference with the name map-b.samplekey is resolved to the key samplekey that is defined in the global scope of Map B.

Now consider the map reference in map Map A:

```
<mapref 
  keyscope="scope-b"
  scope="peer"  
  href="map-b.ditamap"
/> 
```

The referenced map `map-b.ditamap` contains the following markup:

```
<map keyscope="product-x">
 <!-- ... -->
</map>
```

From the context of Map A, key references of the form scope-b.somekey are resolved to keys that are defined in the global scope of Map B, but key references of the form product-x.somekey are not. The presence of a `@keyscope` attribute on the `<map>` element in Map B has no effect. A key reference to the scope scope-b.somekey is equivalent to the unscoped reference somekey when processed in the context of Map B as the root map. In both cases, the presence of `@keyscope` on the root element of Map B has no effect; in the first case it is explicitly ignored, and in the second case the key reference is within the scope product-x and so does not need to be scope qualified.

**Parent topic:**[Examples of scoped keys](../../archSpec/base/examples-of-scoped-keys.md)

