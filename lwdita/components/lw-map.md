---
author: [OASIS DITA Technical Committee, OASIS DITA Technical Committee]
---

# Map

A DITA map is the mechanism for aggregating topic references and defining a context for those references. It contains references to topics, maps, and other resources.

## Syntax

The syntax for representing this component varies depending on the authoring format:

<table><thead><tr><th align="left" id="d27987e39">

Authoring format

</th><th align="left" id="d27987e43">

Syntax and example

</th></tr></thead><tbody><tr><td id="d27987e50">

**XDITA**

</td><td>

`<map>`

 ```
**&lt;map id="remote-main"&gt;**
  <topicmeta>
    <navtitle>Remote Lighting Network</navtitle>
  </topicmeta>
  <topicref href="introduction.dita"/>
  <topicref href="alternatives.dita">
    <topicref href="low-power.dita"/>
    <topicref href="high-power.dita"/>
  </topicref>**
&lt;/map&gt;**
```

</td></tr><tr><td id="d27987e73">

**HDITA**

</td><td>

`<nav>`

 ```
**&lt;nav&gt;**
  <h1>Remote Lighting Network</h1>
  <ul>
    <li><p><a href="introduction.html">Introduction</a><p></li>
    <li><p><a href="alternatives.html">Alternative lighting setups</a></p>
      <ul>
        <li><p><a href="low-power.html">Low power installation</a></p></li>
        <li><p><a href="high-power.html">High power installation</a></p></li>
      </ul>
    </li>
  </ul>**
&lt;/nav&gt;**
```

</td></tr><tr><td id="d27987e96">

**MDITA**

</td><td>

A Markdown file with a title and an unordered of titles for topics and their associated file names

 ```
**\# Remote Lighting Network
 - \[Introduction\]\(introduction.md\)
 - \[Alternative lighting setups\]\(alternatives.md\)
   - \[Low power installation\]\(low-power.md\)
   - \[High power installation\]\(high-power.md\)**
```

</td></tr></tbody>
</table>## Usage information

**Draft comment:**Kristen J Eberlein 02 December 2021  


Most of the information below was authored for DITA 1.0 and subsequently edited.

Zoe Lawson identified a key problem with this information; it does not discuss key definition or key resolution. If this section is going to contain all this info about navigation relationships, then it really also needs to discuss keys.

And then the example should illustrate not just a DITA map creating navigational hierarchy, but also a map that references a key-definition map.

A map describes the relationships among a set of DITA topics. Nested topics create a hierarchical relationship. The topic that does the nesting is the parent, and the topics that are nested are the children.

**Draft comment:**Kristen J Eberlein 10 November 2021  


I moved this content about titles in maps from "Rendering expectations," where I do not think it belonged. I think we probably ought to be clearer about the scenarios in which titles are rendered; certainly users get confused about this. And do we cover processing expectations for submaps somewhere?

The title component can be used to provide a title for the map. In some scenarios the title is purely informational and is present only as an aid to the author. In other scenarios, the title might be useful or even required. In a map referenced by another map, the title might be discarded as topics from the submap are aggregated into a larger publication.

## Rendering expectations

When rendering a map, processors might make use of the relationships defined in the map to create a table of contents \(TOC\), aggregate topics into a PDF document, or create links between topics in the output.

## Attributes

The available attributes vary based on the authoring format:

-   **XDITA**

    The following attributes are available on this element: [architectural attributes](../commonspec/specification/common/reuse-w-lwdita/../../langRef/attributes/attribute-groups.md#architectural-attributes), [localization attributes](../commonspec/specification/common/reuse-w-lwdita/../../langRef/attributes/attribute-groups.md#localization-attributes), [universal attributes](../commonspec/specification/common/reuse-w-lwdita/../../langRef/attributes/attribute-groups.md#universal-attributes), and [`@id`](../commonspec/specification/common/reuse-w-lwdita/../../langRef/attributes/attribute-groups.md#id).

    For this element, the `@id` attribute is required.

-   **HDITA**

    The following attributes are available on this element: [localization attributes](../commonspec/specification/common/reuse-w-lwdita/../../langRef/attributes/attribute-groups.md#localization-attributes), [universal attributes](../commonspec/specification/common/reuse-w-lwdita/../../langRef/attributes/attribute-groups.md#universal-attributes), and [`@id`](../commonspec/specification/common/reuse-w-lwdita/../../langRef/attributes/attribute-groups.md#id).

-   **MDITA**

    There is no attribute support for the MDITA core profile. For the MDITA extended profile, attributes can be specified by using the HDITA representation.



## Examples

The section contains examples of how the map component can be used.

The following code sample shows a simple XDITA map. It contains key definitions, including one for variable text, as well as topic references that create a hierarchical table of contents \(TOC\):

```
**&lt;map&gt;**
  <topicmeta>
    <navtitle>Planting a winter garden</navtitle>
  </topicmeta>
  **&lt;!-- Key definitions for topics --&gt;**
  <keydef keys="winter-garden" href="garden/winter-garden.dita"/>
  <keydef keys="crop-types" href="garden/crops/crop-types.dita"/>
  <keydef keys="selecting-plants" href="garden/tasks/selecting-plants.dita"/>
  **&lt;!-- Variable text definition --&gt;**
  <keydef keys="product-greenhouse">
    <topicmeta>
      <keytext>Acme Greenhouse</keytext>
    </topicmeta>
  </keydef>
  **&lt;!-- TOC hierarchy --&gt;**
  <topicref keyref="winter-garden">
    <topicref keyref="crop-types"/>
    <topicref keyref="selecting-plants"/>
    <topicref href="garden/tasks/planting-short-season-crops.dita"/>
    <topicref href="garden/tasks/planting-long-season-crops.dita"/>
    <topicref href="garden/tasks/extending-growing-season.dita"/>
    <!-- … -->
  </topicref>**
&lt;/map&gt;
**
```

The following code sample shows a simple HDITA map. It contains key definitions, including one for variable text, as well as topic references that create a hierarchical table of contents \(TOC\):

```
**&lt;nav&gt;**
  <h1>Planting a winter garden</h1>
  **&lt;!-- Key definitions for topics --&gt;**
  <div data-class="keydef" data-keys="winter-garden" href="garden/winter-garden.html"/>
  <div data-class="keydef" data-keys="crop-types" href="garden/crop-types.html"/>
  <div data-class="keydef" data-keys="selecting-plants" href="garden/selecting-plants.html"/>
  <div data-class="keydef" data-keys="plant-short-season" href="garden/plant-short-season.html"/>
  <div data-class="keydef" data-keys="plant-long-season" href="garden/plant-long-season.html"/>
  <div data-class="keydef" data-keys="extending-season" href="garden/extending-season.html"/>
  **&lt;!-- Variable text definition --&gt;**
  <div data-class="keydef" data-keys="product-greenhouse">
    <span data-class="keytext">Acme Greenhouse</span>
  </div>
  **&lt;!-- TOC hierarchy --&gt;**
  <ul>
    <li><a data-keyref="winter-garden">Planting a winter garden</a>
      <ul>
        <li><a data-keyref="crop-types">Crops for a winter garden</a></li>
        <li><a data-keyref="selecting-plants">Selecting your winter crops</a></li>
        <li><a data-keyref="plant-short-season">Planting short-season crops</a></li>
        <li><a data-keyref="plant-long-season">Planting long-season crops</a></li>
        <li><a data-keyref="extending-season">Extending the growing season</a></li>
      </ul>
    </li>
  </ul>**
&lt;/nav&gt;**
```

The following code sample shows a simple MDITA map. It contains key definitions, including one for variable text, as well as topic references that create a hierarchical table of contents \(TOC\):

```
# Planting a winter garden
  **&lt;!-- Key definitions for topics --&gt;**
  <div data-class="keydef" data-keys="winter-garden" href="garden/winter-garden.md"/>
  <div data-class="keydef" data-keys="crop-types" href="garden/crop-types.md"/>
  <div data-class="keydef" data-keys="selecting-plants" href="garden/selecting-plants.md"/>
  <div data-class="keydef" data-keys="plant-short-season" href="garden/plant-short-season.md"/>
  <div data-class="keydef" data-keys="plant-long-season" href="garden/plant-long-season.md"/>
  <div data-class="keydef" data-keys="extending-season" href="garden/extending-season.md"/>
  **&lt;!-- Variable text definition --&gt;**
  <div data-class="keydef" data-keys="product-greenhouse">
    <span data-class="keytext">Acme Greenhouse</span>
  </div>
  **&lt;!-- TOC hierarchy --&gt;**
 - [Planting a winter garden](winter-garden)
   - [Crops for a winter garden](crop-types)
   - [Selecting your winter crops](selecting-plants)
   - [Planting short-season crops](plant-short-season)
   - [Planting long-season crops](plant-long-season)
   - [Extending the growing season](extending-season)
```

**Draft comment:**Kristen J Eberlein 26 December 2022  


Is the above syntax correct for specifying @keyref on a topic reference component?

**Parent topic:**[Map components](../components/containers/map-components.md)

