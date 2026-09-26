---
author: [OASIS DITA Technical Committee, OASIS DITA Technical Committee]
---

# Description

A description is a statement that describes or contains additional information about an object.

## Syntax

The syntax for representing this component varies depending on the authoring format:

<table><thead><tr><th align="left" id="d34256e37">

Authoring format

</th><th align="left" id="d34256e41">

Syntax and example

</th></tr></thead><tbody><tr><td id="d34256e48">

**XDITA**

</td><td>

`<desc>` inside `<audio>`, `<fig>`, and `<video>`

 **Example:**

 ```
<audio autoplay="false" controls="true" loop="false"
       muted="false">
  **&lt;desc&gt;Theme song for the LwDITA podcast&lt;/desc&gt;**
  <fallback>The theme song is not available.</fallback>
  <media-source value="theme-song.mp3"/>
  <media-track srclang="en" value="theme-song.vtt"/>
</audio>
```

</td></tr><tr><td id="d34256e84">

**HDITA**

</td><td>

`@title` attribute on `<audio>` and `<video>`

 There is no specific syntax for description in a figure component.

 **Example:**

 ```
<audio **title="Theme song for the LwDITA podcast"** controls>
  <source src="theme-song.mp3">
  <track src="theme-song.vtt" kind="captions" srclang="en">
  <p data-class="fallback">The theme song is not available.</p>
</audio>
```

</td></tr><tr><td id="d34256e121">

**MDITA**

</td><td>

There is no specific syntax for description in MDITA.

</td></tr></tbody>
</table>## Usage information

The following list outlines common uses of the description component:

-   **Table and figure**

    Provides more information than can be contained in the title

-   **Cross reference**

    Provides a description of the target


## Rendering expectations

When used in conjunction with figures, processors SHOULD consider the content of description components to be part of the content flow.

When used in conjunction with cross references, processors often choose to render the content of description components as hover help or other forms of link preview.

## Attributes

The available attributes vary based on the authoring format:

-   **XDITA**

    The following attributes are available on this element: [localization attributes](../commonspec/specification/common/reuse-w-lwdita/../../langRef/attributes/attribute-groups.md#localization-attributes), [universal attributes](../commonspec/specification/common/reuse-w-lwdita/../../langRef/attributes/attribute-groups.md#universal-attributes), and [`@props`](../commonspec/specification/common/reuse-w-lwdita/../../langRef/attributes/lwdita-common-attributes.md#props).

-   **MDITA**

    There is no attribute support for the MDITA core profile. For the MDITA extended profile, attributes can be specified by using the HDITA representation.



## Examples

The following example demonstrates the use of description in a figure component in an XDITA topic.

```
<?xml version="1.0" encoding="UTF-8"?>
<!DOCTYPE topic PUBLIC "-//OASIS//DTD LIGHTWEIGHT DITA Topic//EN" "topic.dtd">
<topic id="intro-product">
  <title>Remote Lighting Overview</title>
  <body>
    <p>The Remote Lighting Network kit includes a wireless smart system that helps make the lighting in your home more energy efficient and easier to manage.</p>
    <fig>
      <desc>This image shows the retail package for version 2.3 of the Remote Lighting Network kit and does not represent any other versions</desc>
      <image href="images/kit-package.jpg"><alt>Retail package for the Remote Lighting Network kit </alt></image>
    </fig>
  </body>
</topic>
```

The following example demonstrates the use of description in a video component in an HDITA topic.

```
<!DOCTYPE html>
<title>The Sensei Sushi Promise</title>
<body>
  <article id="sensei-promise">
  <h1>The Sensei Sushi Promise</h1>
  <video height="300" width="400" title="Video about the Sensei Sushi promise" controls poster="sensei-video.jpg">
  <source src="sensei-video.mp4"/>
  <source src="sensei-video.ogg"/>
  <source src="sensei-video.webm"/> 
  <track srclang="en" src="sensei-video.vtt"/>
  <img src="video-not-available.png" alt="This video cannot be displayed."/>
  </video>
  </article>
</body>
  
```

**Parent topic:**[Body components](../components/containers/body-components.md)

