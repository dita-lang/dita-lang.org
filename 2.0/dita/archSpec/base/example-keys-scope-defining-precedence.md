---
author: OASIS DITA Technical Committee
---

# Example: How key scopes affect key precedence

For the purposes of key definition precedence, the scope-qualified key definitions from a child scope are considered to occur at the location of the scope-defining element within the parent scope.

Within a single key scope, key precedence is determined by which key definition comes first in the map, or by the depth of the submap that defines the key. This was true for all key definitions prior to DITA 1.3, because all key definitions were implicitly in the same key scope. Scope-qualified key names differ in that precedence is determined by the location where the key scope is defined.

This distinction is particularly important when key names or key scope names contain periods. While avoiding periods within these names will avoid this sort of issue, such names are legal so processors will need to handle them properly.

The following root map contains one submap and one key definition. The submap defines a key named "sample".

```
<map>
  <!-- The following mapref defines the key scope "scopeName" -->
  <mapref href="submap.ditamap" keyscope="scopeName"/>

  <!-- The following keydef defines the key "scopeName.sample" -->
  <keydef keys="scopeName.sample" href="losing-key.dita"/>

  <!-- Other content, key definitions, etc. -->
</map>
```

```
<map>
  <keydef keys="sample" href="winning-key.dita"/>
  <!-- Other content, key definitions, etc. -->
</map>
```

When determining precedence, all keys from the key scope "scopeName" occur at the location of the scope-defining element—in this case, the `<mapref>` element in the root map. Because the `<mapref>` comes first in the root map, the scope-qualified key name "scopeName.sample" that is pulled from `submap.ditamap` occurs before the definition of "scopeName.sample" in the root map. This means that in the context of the root map, the effective definition of "scopeName.sample" is the scope-qualified key definition that references `winning-key.dita`.

The following illustration shows a root map and several submaps. Each submap defines a new key scope, and each map defines a key. In order to aid understanding, this sample does not use valid DITA markup; instead, it shows the content of submaps inline where they are referenced.

```
<map>   <!-- Start of the root map -->

  <mapref href="submapA.ditamap" keyscope="scopeA">  
    <!-- Contents of submapA.ditamap begin here -->
    <mapref href="submapB.ditamap" keyscope="scopeB">
      <!-- Contents of submapB.ditamap: define key MYKEY -->
      **&lt;keydef keys="MYKEY" href="example-ONE.dita"/&gt;**
    </mapref>
    **&lt;keydef keys="scopeB.MYKEY" href="example-TWO.dita"/&gt;**
    <!-- END contents of submapA.ditamap -->
  </mapref>

  <mapref href="submapC.ditamap" keyscope="scopeA.scopeB">
    <!-- Contents of submapC.ditamap begin here -->
    **&lt;keydef keys="MYKEY" href="example-THREE.dita"/&gt;**
  </mapref>

  **&lt;keydef keys="scopeA.scopeB.MYKEY" href="example-FOUR.dita"/&gt;**
</map>
```

The sample map shows four key definitions. From the context of the root scope, all have key names of "scopeA.scopeB.MYKEY".

1.  `submapB.ditamap` defines the key "MYKEY". The key scope "scopeB" is defined on the `<mapref>` to `submapB.ditamap`, so from the context of `submapA.ditamap`, the scope-qualified key name is "scopeB.MYKEY". The key scope "scopeA" is defined on the `<mapref>` to `submapA.ditamap`, so from the context of the root map, the scope-qualified key name is "scopeA.scopeB.MYKEY".
2.  `submapA.ditamap` defines the key "scopeB.MYKEY". The key scope "scopeA" is defined on the `<mapref>` to `submapA.ditamap`, so from the context of the root map, the scope-qualified key name is "scopeA.scopeB.MYKEY".
3.  `submapC.ditamap` defines the key "MYKEY". The key scope "scopeA.scopeB" is defined on the `<mapref>` to `submapC.ditamap`, so from the context of the root map, the scope-qualified key name is "scopeA.scopeB.MYKEY".
4.  Finally, the root map defines the key "scopeA.scopeB.MYKEY".

Because scope-qualified key definitions are considered to occur at the location of the scope-defining element, the effective key definition is the one from `submapB.ditamap` \(the definition that references `example-ONE.dita`\).

**Parent topic:**[Examples of scoped keys](../../archSpec/base/examples-of-scoped-keys.md)

