---
author: [OASIS DITA Technical Committee, OASIS DITA Technical Committee]
---

# Fallback

Fallback content is content to be presented when multimedia objects cannot be rendered.

## Syntax

The syntax for representing this component varies depending on the authoring format:

<table><thead><tr><th align="left" id="d27715e37">

Authoring format

</th><th align="left" id="d27715e41">

Syntax and example

</th></tr></thead><tbody><tr><td id="d27715e48">

**XDITA**

</td><td>

`<fallback>`

 ```
<audio autoplay="false" controls="true" loop="false"
       muted="false">
  <desc>Theme song for the LwDITA podcast</desc>
  **&lt;fallback&gt;
    &lt;p&gt;The theme song is not available.&lt;/p&gt;
  &lt;/fallback&gt;**
  <media-source href="theme-song.mp3"/>
  <media-track srclang="en" href="theme-song.vtt"/>
</audio>
```

</td></tr><tr><td id="d27715e70">

**HDITA**

</td><td>

`<p data-class="fallback">`

 ```
<audio title="Theme song for the LwDITA podcast" controls>
  <source src="theme-song.mp3">
  <track src="theme-song.vtt" kind="captions" srclang="en">
  **&lt;p data-class="fallback"&gt;The theme song is not available.&lt;/p&gt;**
</audio>
```

</td></tr><tr><td id="d27715e92">

**MDITA**

</td><td>

There is no specific support in the MDITA core profile. If needed, use an HDITA snippet.

</td></tr></tbody>
</table>## Processing expectations

The contents of this element are displayed only when the media that is referenced by the containing element cannot be displayed or viewed.

## Attributes

The available attributes vary based on the authoring format:

-   **XDITA**

    The following attributes are available on this element: [localization attributes](../commonspec/specification/common/reuse-w-lwdita/../../langRef/attributes/attribute-groups.md#localization-attributes), [universal attributes](../commonspec/specification/common/reuse-w-lwdita/../../langRef/attributes/attribute-groups.md#universal-attributes), and [`@props`](../commonspec/specification/common/reuse-w-lwdita/../../langRef/attributes/lwdita-common-attributes.md#props).

-   **MDITA**

    There is no attribute support for the MDITA core profile. For the MDITA extended profile, attributes can be specified by using the HDITA representation.



## Examples

The following example demonstrates the use of fallback in an XDITA topic.

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

The following example demonstrates the use of fallback in an HDITA topic.

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

