# Example: How key scopes with the same name interact

In a large publication it is possible that two sets of content will use the same key scope name. These scopes have no relationship with each other aside from the shared name; key definitions in one are not shared with the other.

This scenario is more likely in a large publication that pulls from multiple sources, where the root map refers to two sets of content that share a key scope name. Those key scopes are [non-intersecting](the-key-scope-attribute.md#non-intersecting), meaning that key definitions within one scope are not automatically available to the other key scope that happens to share the same name.

In the following example, a root map refers to multiple product maps that are assembled into a custom product suite:

```
<map>
  <title>Custom product suite overview</title>

  <!-- Content from product A -->
  <mapref href="productA/productA.ditamap"/>

  <!-- Content from product B -->
  <mapref href="productB/productB.ditamap"/>

  <!-- ...Content from additional products... -->
</map>
```

In this scenario, both product A and product B share a key scope name using. The full context, showing content from both A and B, shows the shared key scope names and one shared key name:

```
<map>
  <title>Custom product suite overview</title>

  <!-- Content from product A (from productA.ditamap) -->
  <topicref href="productA/overview.dita">
    <topicref href="productA/using.dita" keys="usingprodA" **keyscope="using"**>
      <topicref href="productA/signup.dita" keys="signup"/>
      <topicref href="productA/logging-in.dita" keys="login"/>
      <!-- ... additional topics and keys -->
      <topicref href="productA/issues.dita" keys="troubleshooting"/>
    </topicref>
  </topicref>

  <!-- Content from product B (from productB.ditamap) -->
  <topicref href="productB/overview.dita">
    <topicref href="productB/using.dita" keys="usingprodB" **keyscope="using"**>
      <topicref href="productB/request-access.dita" keys="access"/>
      <topicref href="productB/log-in-to-portal.dita" keys="login-portal"/>
      <!-- ... additional topics and keys -->
      <topicref href="productB/troubleshooting.dita" keys="troubleshooting"/>
    </topicref>
  </topicref>

  <!-- ...Content from additional products... -->
</map>
```

In the resolved view shown above, each product defines the key scope using, and within that key scope each defines the key name troubleshooting. Keys are resolved as follows:

-   Within the root map context:
    1.  Keys unique to Product A's using scope can be referenced with that prefix: using.usingprodA, using.signup, and using.login.
    2.  Keys unique to Product B's using scope can be referenced with that prefix: using.usingprodB, using.access, and using.login-portal.
    3.  The scoped reference using.troubleshooting is defined twice. In this case, normal key precedence rules apply. It resolves to the first definition, `productA/issues.dita`.
    4.  Product B's troubleshooting topic cannot be referenced by key because of the conflict. The easiest way to make this key definition available would be to add an additional scope around all of Product B's content.
-   Within the Product A context:
    1.  `keyref="usingprodA"` resolves to `productA/using.dita`
    2.  `keyref="signup"` resolves to `productA/signup.dita`
    3.  `keyref="login"` resolves to `productA/logging-in.dita`
    4.  `keyref="troubleshooting"` resolves to `productA/issues.dita`
    5.  Keys that are in Product B's using context, and are unique to that context, can be referenced with the scope prefix: using.usingprodB, using.access, using.login-portal
-   Within the Product B context:
    1.  `keyref="usingprodB"` resolves to `productB/using.dita`
    2.  `keyref="access"` resolves to `productB/request-access.dita`
    3.  `keyref="login-portal"` resolves to `productB/log-in-to-portal.dita`
    4.  `keyref="troubleshooting"` resolves to `productB/troubleshooting.dita`
    5.  Keys that are in Product A's using context, and are unique to that context, can be referenced with the scope prefix: using.usingprodA, using.signup, using.login
    6.  The shared key definition using.troubleshooting resolves against the root context, which means it resolves to the Product A context, `productA/issues.dita`

