---
author: OASIS DITA Technical Committee
---

# Example: Scoped key definitions for variable text

Scoped key definitions can be used for variable text. This enables you to use the same DITA topic multiple times in a DITA map, and in each instance the variable text can resolve differently.

The Acme Tractor Company produces two models of tractor: X and Y. Their product manual contains sets of instructions for each model; until now, the maintenance procedures have been different for each model. Now, the product manual needs to add instructions for changing the oil, and the procedure is identical for both model X and model Y. While most maintenance procedures are different for each model, the instructions for changing the oil are identical for both model X and model Y. The company policies call for including the specific model number in each topic, so a generic topic that could be used for both models is not permitted. Scoped keys can solve this problem.

1.  The authoring team creates the new `changing-the-oil.dita`. The new topic uses the following markup to reference the product model:

    ```
    <keyword keyref="model"/>
    ```

2.  The information architect examines the root map for the manual, and decides how to define key scopes. Originally, the map looked like the following:

    ```
    <map>
      <!-- Model X: Maintenance procedures -->
      <topicref href="model-x-procedures.dita">
        <topicref href="model-x/replacing-a-tire.dita"/>
        <topicref href="model-x/adding-fluid.dita"/>
      </topicref>
    
    <!-- Model Y: Maintenance procedures -->
      <topicref href="model-y-procedures.dita">
        <topicref href="model-y/replacing-a-tire.dita"/>
        <topicref href="model-y/adding-fluid.dita"/>
      </topicref>
    </map>
    ```

3.  The information architect wraps each set of procedures in a `<topicgroup>` element and sets the `@keyscope` attribute.

    ```
    <map>
      <!-- Model X: Maintenance procedures -->
      <topicgroup **keyscope="model-x"**>
        <topicref href="model-x-procedures.dita">
          <topicref href="model-x/replacing-a-tire.dita"/>
          <topicref href="model-x/adding-fluid.dita"/>
        </topicref>
      </topicgroup>
    
    <!-- Model Y: Maintenance procedures -->
      <topicgroup **keyscope="model-y"**>
        <topicref href="model-y-procedures.dita">
          <topicref href="model-y/replacing-a-tire.dita"/>
          <topicref href="model-y/adding-fluid.dita"/>
        </topicref>
      </topicgroup>
    </map>
    ```

    This defines the key scopes for each set of procedures.

4.  The information architect then adds key definitions to each set of procedures, as well as a reference to the `changing-the-oil.dita` topic.

    ```
    <map>
      <!-- Model X: Maintenance procedures -->
      <topicgroup keyscope="model-x">
        **&lt;keydef keys="model"&gt;
          &lt;topicmeta&gt;
            &lt;keytext&gt;X&lt;/keytext&gt;
          &lt;/topicmeta&gt;
        &lt;/keydef&gt;**
        <topicref href="model-x-procedures.dita">
          <topicref href="model-x/replacing-a-tire.dita"/>
          <topicref href="model-x/adding-fluid.dita"/>
          **&lt;topicref href="common/changing-the-oil.dita"/&gt;**
        </topicref>
      </topicgroup>
    
    <!-- Model Y: Maintenance procedures -->
      <topicgroup keyscope="model-y">
        **&lt;keydef keys="model"&gt;
          &lt;topicmeta&gt;
            &lt;keytext&gt;Y&lt;/keytext&gt;
          &lt;/topicmeta&gt;
        &lt;/keydef&gt;**
        <topicref href="model-y-procedures.dita">
          <topicref href="model-y/replacing-a-tire.dita"/>
          <topicref href="model-y/adding-fluid.dita"/>
          **&lt;topicref href="common/changing-the-oil.dita"/&gt;**
        </topicref>
      </topicgroup>
    </map>
    ```

    When the DITA map is processed, the `changing-the-oil.dita` topic is rendered twice. The model variable is rendered differently in each instance, using the text as specified in the scoped key definition. Without key scopes, the first key definition would win, and "model "X" would be used in all topics.


**Parent topic:**[Examples of scoped keys](../../archSpec/base/examples-of-scoped-keys.md)

