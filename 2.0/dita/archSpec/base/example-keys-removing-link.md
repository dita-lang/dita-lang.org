---
author: OASIS DITA Technical Committee
---

# Example: Link modification or removal

This scenario outlines how different authors can effectively remove or modify a `<link>` element in a shared topic.

A company wants to use a shared topic for information about customer support. For most products, the shared topic includes a link to a topic about extended warranties. But a small number of products do not offer extended warranties.

1.  Team one creates the shared topic: `customer-support.dita`. The topic contains the following mark-up:

    ```
     <related-links>
      <link keyref="extended-warranties" href="common/extended-warranties.dita"/>
     </related-links>
    ```

2.  The teams that need the link to the topic about extended warranties can reference the `customer-support.dita` topic in their DITA maps. When processed, the related link in the topic resolves to the `common/extended-warranties.dita` topic.

3.  The teams that do not want the related link to the topic about extended warranties can include a key definition in their DITA map that does not include an `@href` attribute, for example:

    ```
    <map>
      <!-- ... -->
      <keydef keys="extended-warranties"/>
      <!-- ... -->
    </map>
    ```

    When processed, the related link in the topic is not rendered.

4.  Yet another team wants to simply have a paragraph about extended warranties printed. They define the key definition for "extended-warranties" as follows:

    ```
    <map>
      <!-- ... -->
      <keydef keys="extended-warranties">
        <topicmeta>
          <keytext>This product does not offer extended warranties.</keytext>
        </topicmeta>
      </keydef>
      <!-- ... -->
    </map>
    ```

    When this team renders their content, there is no hyperlink in the output, just the text "This product does not offer extended warranties" statement.


**Parent topic:**[Examples of keys](../../archSpec/base/examples-of-keys.md)

