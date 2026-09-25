---
author: OASIS DITA Technical Committee
---

# Alternative titles

This topic contains examples of alternative titles moved from the `<titlealt>` topic. It needs editing and to be restructured.

## Custom title roles

A content architect could create a Topic specialization with custom `<titlealt>` specializations called `<windowtitle>` and `<breadcrumbtitle>`. These specializations specify default `@title-role` values of `window` and `breadcrumb`, respectively, so that authors do not have to specify those roles explicitly. Content using these specializations could look like the following.

```
<helpTopic id="topic167">
  <title>Doing the Thing in the Place where the Stuff Is</title>
  <prolog>
    <windowtitle>Doing Things</windowtitle>
    <breadcrumbtitle>Things</breadcrumbtitle>
  </prolog>
  <!-- ... -->
</helpTopic>
```

They could also incorporate these elements into their map document type shell, enabling map authors to override the values in topics.

```
<topicref href="topic167.dita">
  <topicmeta>
    <breadcrumbtitle>Thing Doing</breadcrumbtitle>
  </topicmeta>
</topicref>
```

## Navigation titles and precedence

Move to archSpec

Consider the following series of topic references:

```
<topicref href="topics.dita#one"/>
<topicref href="topics.dita#two">
  <topicmeta>
    <titlealt title-role="navigation">Topic Two (Map navigation title)</titlealt>
  </topicmeta>
</topicref>
<topicref href="topics.dita#three">
  <topicmeta>
    <titlealt title-role="linking">Topic Three (Map linking title)</titlealt>
  </topicmeta>
</topicref>
<topicref href="topics.dita#four">
  <topicmeta>
    <titlealt title-role="linking">Topic Four (Map linking title)</titlealt>
  </topicmeta>
</topicref>
```

Here is the ditabase document containing those topics:

```
<dita>
  <topic id="one">
    <title>Topic One</title>
  </topic>
  <topic id="two">
    <title>Topic Two</title>
    <prolog>
      <titlealt title-role="navigation">Topic Two (Topic navigation title)</titlealt>
    </prolog>
  </topic>
  <topic id="three">
    <title>Topic Three</title>
  </topic>
  <topic id="four">
    <title>Topic Four</title>
    <prolog>
      <titlealt title-role="navigation">Topic Four (Topic navigation title)</titlealt>
    </prolog>
  </topic>
</dita>
```

The resulting navigation structure would be as follows:

1.  **Topic One** - The navigation title is pulled from the title of the topic, since neither the map nor the topic specify a navigation title.
2.  **Topic Two \(Map navigation title\)** - The navigation title comes from the map, as its navigation title takes precedence over that in the topic.
3.  **Topic Three \(Map linking title\)** - The navigation title comes from the map, which serves as the fallback for navigation titles when no `navigation` alternative title is provided.
4.  **Topic Four \(Topic navigation title\)** - The navigation title comes from the topic. Even though the map specifies a `<titlealt>` with a role of `linking`, and normally maps take precedence, a `linking` alternative title is only used for navigation when there is no `navigation` alternative title available. In this case, the one from the topic is present, and is therefore used. To override the topic's navigation title in this case, the topic reference would have to explicitly provide a `navigation` alternative title. The `linking` title in the map still applies as the resource's linking title, just not its navigation title.

## Example: Reconciling Map and Topic Alternative Titles

A `<topicref>` contains the following titles:

```
<topicref href="topic.dita">
  <topicmeta>
    <titlealt title-role="breadcrumbTitle">Doin' Stuff</titlealt>
    <titlealt title-role="longTitle">That thing you do when there's stuff that needs doing.</titlealt>
  </topicmeta>
</topicref>
```

The referenced topic has the following prolog:

```
<prolog>
  <titlealt title-role="subtitle">Doing Stuff</titlealt>
  <titlealt title-role="breadcrumbTitle flipbookTitle">Stuff</titlealt>
</prolog>
```

During processing, the two sets of elements will be concatenated together \(logically, if not physically\), with the map's elements coming first:

```
<titlealt title-role="breadcrumbTitle">Doin' Stuff</titlealt>
<titlealt title-role="longTitle">That thing you do when there's stuff that needs doing.</titlealt>
<titlealt title-role="subtitle">Doing Stuff</titlealt>
<titlealt title-role="breadcrumbTitle flipbookTitle">Stuff</titlealt>
```

Note that `breadcrumbTitle` is specified in both the map and the topic, and the map's value takes precedence. However, that same alternative title in the topic specifies an additional role of `flipbookTitle`, which is not overridden by the map, and so should be preserved.

The equivalent merged alternative titles, with duplicates removed, would look as follows.

```
<titlealt title-role="breadcrumbTitle">Doin' Stuff</titlealt>
<titlealt title-role="longTitle">That thing you do when there's stuff that needs doing.</titlealt>
<titlealt title-role="subtitle">Doing Stuff</titlealt>
<titlealt title-role="flipbookTitle">Stuff</titlealt>
```

## Keyrefs and alternative titles

Move to archSpec. Content of &lt;titlealt&gt; needs to change; it's backwards.

Consider the following two topic references:

```
<topicref keys="a">
  <topicmeta>
    <titlealt title-role="linking">Linking Title from Keyref</titlealt>
    <titlealt title-role="navigation">Navigation Title from Keyref</titlealt>
  </topicmeta>
</topicref>
<topicref keyref="a">
  <topicmeta>
    <titlealt title-role="navigation">Navigation Title</titlealt>
  </topicmeta>
</topicref>
```

The resolved titles would look something like this:

```
<titlealt title-role="navigation">Navigation Title</titlealt>
<titlealt title-role="linking">Linking Title from Keyref</titlealt>
<titlealt title-role="navigation">Navigation Title from Keyref</titlealt>
```

That is, the "local" alternative titles come before those pulled from the key reference. In cases where only a single alternative title of a given role can be used, the first takes precedence, so the `navigation` title from the key reference has no effect.

**Parent topic:**[Navigation](../../archSpec/base/navigation.md)

**Related information**  


[Using titles in maps and submaps](../../archSpec/base/title-usage-within-maps.md)

