---
author: [OASIS DITA Technical Committee, OASIS DITA Technical Committee]
---

# Source

The media source specifies the location of an audio or video resource.

## Syntax

The syntax for representing this component varies depending on the authoring format:

<table><thead><tr><th align="left" id="d30171e37">

Authoring format

</th><th align="left" id="d30171e41">

Syntax and example

</th></tr></thead><tbody><tr><td id="d30171e48">

**XDITA**

</td><td>

`<media-source>`

 ```
<audio autoplay="false" controls="true" loop="false"
       muted="false">
        <desc>Theme song for the LwDITA podcast</desc>
        <fallback>
          <p>The theme song is not available.</p>
        </fallback>
        **&lt;media-source href="theme-song.mp3"/&gt;**
        <media-track srclang="en" href="theme-song.vtt"/>
</audio>
```

</td></tr><tr><td id="d30171e70">

**HDITA**

</td><td>

`<source>`

 ```
<audio title="Theme song for the LwDITA podcast" controls>
  **&lt;source src="theme-song.mp3"&gt;**
  <track src="theme-song.vtt" kind="captions" srclang="en">
  <p data-class="fallback">The theme song is not available.</p>
</audio>
```

</td></tr><tr><td id="d30171e92">

**MDITA**

</td><td>

There is no specific support in the MDITA core profile. If needed, use an HDITA snippet.

</td></tr></tbody>
</table>## Usage information

The media source is modeled on the `<source>` element used in HTML5 media elements.

## Rendering expectations

When multiple `<media-source>` components are present, the user agent evaluates them in document order and selects the first resource that can be played.

## Attributes

The available attributes vary based on the authoring format:

-   **XDITA and HDITA**

    The following attributes are available on this element: [link relationship attributes](../commonspec/specification/common/reuse-w-lwdita/../../langRef/attributes/attribute-groups.md#link-relationship-attributes), [localization attributes](../commonspec/specification/common/reuse-w-lwdita/../../langRef/attributes/attribute-groups.md#localization-attributes), [universal attributes](../commonspec/specification/common/reuse-w-lwdita/../../langRef/attributes/attribute-groups.md#universal-attributes), and [`@keyref`](../commonspec/specification/common/reuse-w-lwdita/../../langRef/attributes/lwdita-common-attributes.md#keyref).

-   **MDITA**

    For the MDITA core profile, the equivalent of the XDITA `@keyref` attribute is supported. For the MDITA extended profile, attributes can be specified by using the HDITA representation.



## Examples

The following example demonstrates the use of source in an XDITA topic.

```
<?xml version="1.0" encoding="UTF-8"?>
<!DOCTYPE topic PUBLIC "-//OASIS//DTD LIGHTWEIGHT DITA Topic//EN" "lw-topic.dtd">
<topic id="sensei-promise">
  <title>The Sensei Sushi Promise</title>
  <body>
    <video height="300px"
      loop="false"
      muted="false"
      poster="sensei-video.jpg"
      width="400px">
      <desc>Video about the Sensei Sushi promise.</desc>
      <fallback>
        <image href="video-not-available.png">
          <alt>This video cannot be displayed.</alt>
        </image>
      </fallback>
      <media-source href="sensei-video.mp4"/>
      <media-source href="sensei-video.ogg"/>
      <media-source href="sensei-video.webm"/>
      <media-track srclang="en" value="sensei-video.vtt"/> 
    </video>    
  </body>
</topic>
```

The following example demonstrates the use of source in an HDITA topic.

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

**Parent topic:**[Multimedia components](../components/containers/multimedia-components.md)

