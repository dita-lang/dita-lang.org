---
author: OASIS DITA Technical Committee
---

# Example: Key definitions in nested key scopes

In this scenario, the root map contains nested key scopes, each of which contain duplicate key definitions. The effective key definition depends on key-scope precedence rules.

Consider the following DITA map:

```
<map>
  <title>Root map</title>
  <!-- Root scope -->
  <keydef keys="a" href="topic-1.dita"/>
  
  <!-- Key scope A -->
  <topicgroup keyscope="A">
    <keydef keys="b" href="topic-2.dita"/>
    
    <!-- Key scope A-1 -->
    <topicgroup keyscope="A-1">
      <keydef keys="c" href="topic-3.dita"/>
    </topicgroup>

    <!-- Key scope A-2 -->    
    <topicgroup keyscope="A-2">
      <keydef keys="d" href="topic-4.dita"/>
    </topicgroup>
  </topicgroup> 

  <!-- Key scope B -->  
  <topicgroup keyscope="B">
    <keydef keys="a" href="topic-5.dita"/>
    <keydef keys="e" href="topic-6.dita"/>

    <!-- Key scope B-1 -->     
    <topicgroup keyscope="B-1">
      <keydef keys="f" href="topic-7.dita"/>
    </topicgroup>

    <!-- Key scope B-2 -->
    <topicgroup keyscope="B-2">
      <keydef keys="g" href="topic-8.dita"/>
    </topicgroup>
  </topicgroup>
</map>
```

The key scopes in this map form a tree structure.

![Tree structure diagram showing example references to key scope names relative to other key scopes. The tree has a root node labeled 'Root' with two children 'A' and 'B', which in turn have children 'A-1', 'A-2', 'B-1', and 'B-2'. Every node has a list of one or more key scope names with different typographic styling. In the root node the name 'A' appears with no style, and the following labels appear with parentheses: 'A.b', 'A.A-1.c', 'A.A-2.d', 'B.a', 'B.e', 'B.B-1.f', 'B.B-2.g'. In the A node the name 'b' has no style, and the following labels appear with parentheses: 'A-1.c', 'A-2.d'. In the A-1 node the label 'c' appears with no style. In the A-2 node the label 'd' appears with no style. In the B node the label 'a' appears with square brackets; the label 'e' appears with no style; and the following labels appear with parentheses: 'B-1.f', 'B-2.g'. In the B-1 node the label 'f' appears with no style. In the B-2 node the label 'g' appears with no style.](../../images/Keyscopes-Illustrated.png "Graphical representation of the key scopes")

Each box in the diagram represents a key scope; the name of the key scope is indicated in bold with upper-case letters. Below the name of the key scope, the key definitions that are present in the scope are listed. Different typographic conventions are used to indicate where the key definition occurs:

-   **No styling**

    The key definition occurs in the immediate key scope and is not overridden by a key definition in a parent scope. For example, key "a" in the root map.

-   **Parentheses**

    The key definition occurs in a child scope. For example, keys "A-1.c" and "A-2.d" in key scope A.

-   **Brackets**

    The key definition occurs in the immediate key scope, but it is overridden by a key definition in an ancestor scope. For example, key "a" in key scope B.


Arrows point from child to parent scopes.

Assume that each key scope contains numerous key references. The following tables demonstrate how key references resolve in key scopes A-2 and B. The first column shows the value used in key references; the second column shows the resource to which the key resolves.

|Key reference|Resource to which the key resolves|
|-------------|----------------------------------|
|a|"a", defined in the root map: `topic-1.dita`|
|d|"d", as defined in the immediate key scope: `topic-4.dita`|
|A-2.d|"d", as defined in the immediate key scope: `topic-4.dita`|
|c|Undefined|
|A-1.c|"A-1.c", as defined in key scope A-1. This key name is available because it exists in the parent scope, key scope A. The key name resolves to `topic-3.dita`|
|A.A-1.c|"A-1.c", as defined in key scope A-1. This key name is available because it exists in the root key scope. The key name resolves to `topic-3.dita`|

<table><thead><tr><th align="left" id="d278772e179">

Key reference

</th><th align="left" id="d278772e182">

Resource to which the key resolves

</th></tr></thead><tbody><tr><td>

e

</td><td>

"e", defined in the immediate key scope: `topic-6.dita`

</td></tr><tr><td>

a

</td><td>

"a", as defined in the *root key scope*. \(While a key definition for "a" exists in the immediate key scope, it is overridden by the key definition that occurs in the parent key scope.\) The key name resolves to `topic-1.dita`

</td></tr><tr><td>

B.a

</td><td>

"a", as defined in the *immediate key scope*. Because the key reference uses the scope-qualified names, it resolves to the key "a" in scope B. The key name resolves to `topic-5.dita`

</td></tr><tr><td>

g

</td><td>

Undefined. The key "g" is defined only in key scope B-2, so no unqualified key named "g" is defined in scope B.

</td></tr><tr><td>

B-2.g

</td><td>

"g", as defined in key scope B-2: `topic-8.dita`.

</td></tr></tbody>
</table>**Parent topic:**[Examples of scoped keys](../../archSpec/base/examples-of-scoped-keys.md)

