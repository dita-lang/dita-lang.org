---
author: [OASIS DITA Technical Committee, OASIS DITA Technical Committee]
---

# Topic metadata

Topic metadata is metadata that applies to a topic based on its context in a map.

## Syntax

<table><thead><tr><th align="left" id="d34873e33">

Authoring format

</th><th align="left" id="d34873e37">

Syntax and example

</th></tr></thead><tbody><tr><td id="d34873e44">

**XDITA**

</td><td>

`<topicmeta>`

 ```
<map>
  **&lt;topicmeta&gt;**
    <navtitle>Configuring the ACME Test Suite</navtitle>
    <data name="goal" value="configuring"/>
  **&lt;/topicmeta&gt;**
  <!-- ... -->
</map
```

</td></tr><tr><td id="d34873e71">

**HDITA**

</td><td>

There is no equivalent to `<topicmeta>`.

</td></tr><tr><td id="d34873e89">

**MDITA**

</td><td>

There is no equivalent to `<topicmeta>`.

</td></tr></tbody>
</table>## Usage information

The metadata specified in a topic metadata component is specific to a given context within a map. If a reference to a single resource appears more than once in a map or set of maps, unique metadata can be specified in each instance. For example, when the parent topic reference results in a link, components within the topic metadata component can be used to provide context-specific information about the link, such as link text or a navigation title.

**Draft comment:**Kristen J Eberlein 23 December 2022  


Could we add information, either in the short description or in the "Usage information" clarifying that the `<topicmeta>` element can be used both to specify metadata about the entire map or for specific topic references? I think that would be useful for readers of the LwDITA spec.

## Attributes

The following attributes are available on this element: [localization attributes](../commonspec/specification/common/reuse-w-lwdita/../../langRef/attributes/attribute-groups.md#localization-attributes) and [universal attributes](../commonspec/specification/common/reuse-w-lwdita/../../langRef/attributes/attribute-groups.md#universal-attributes).


## Example

The following code sample shows how the `<topicmeta>` element can be used to both specify metadata for the entire map and for a specific topic

```
<map>
  <!-- 1. Applies a title and metadata to the entire map -->
  **&lt;topicmeta&gt;
    &lt;navtitle&gt;Configuring the ACME Test Suite&lt;/navtitle&gt;
    &lt;data name="goal" value="configuring"/&gt;
  &lt;/topicmeta&gt;**
  <topicref keyref="configuring-test-suite">
    <topicref keyref="setting-preferences"/>
    <topicref keyref="testing-parameters">
      <!-- 2. Applies metadata to the specific topic-->
      **&lt;topicmeta&gt;
        &lt;data name="parameters" value="test-suite-set"/&gt;
      &lt;/topicmeta&gt;**
    </topicref>
    <topicref keyref="setting-options"/>
    <!-- … -->
  </topicref>
</map>
```

In the above code sample, a `<topicmeta>` element appears twice:

1.  Specifies a navigation title for the map and indicates that all topics in the map are about the user goal of "configuring".
2.  Specifies specific metadata for the topic defined by the key "test-suite-set".

**Parent topic:**[Map components](../components/containers/map-components.md)

