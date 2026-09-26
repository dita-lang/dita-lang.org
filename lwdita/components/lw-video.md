---
author: [OASIS DITA Technical Committee, OASIS DITA Technical Committee]
---

# Video

A video is a recording of moving visual images.

## Syntax

The syntax for representing this component varies depending on the authoring format:

<table><thead><tr><th align="left" id="d32972e37">

Authoring format

</th><th align="left" id="d32972e41">

Syntax and example

</th></tr></thead><tbody><tr><td id="d32972e48">

**XDITA**

</td><td>

`<video>`

 ```
**&lt;video height="300px" width="400px" loop="false"
                muted="false"&gt;**
  <desc>Video about the Sensei Sushi promise.</desc>
  <fallback>
    <image href="video-not-available.png">
      <alt>This video cannot be displayed.</alt>
    </image>
  </fallback>
  <video-poster href="sensei-video.jpg"/>
  <media-source href="sensei-video.mp4"/>
  <media-source href="sensei-video.ogg"/>
  <media-source href="sensei-video.webm"/>
  <media-track srclang="en" href="sensei-video.vtt"/> **
&lt;/video&gt;**
```

</td></tr><tr><td id="d32972e71">

**HDITA**

</td><td>

`<video>`

 ```
**&lt;video height="300" width="400" 
         title="Video about the Sensei Sushi promise" controls 
         poster="sensei-video.jpg"&gt;**
  <source src="sensei-video.mp4"/>
  <source src="sensei-video.ogg"/>
  <source src="sensei-video.webm"/> 
  <track srclang="en" src="sensei-video.vtt"/>
  <img src="video-not-available.png" alt="This video cannot be displayed."/>
**&lt;/video&gt;**
```

</td></tr><tr><td id="d32972e94">

**MDITA**

</td><td>

There is no specific support in the MDITA core profile. If needed, use an HDITA snippet.

</td></tr></tbody>
</table>## Usage information

The video component is modeled on the HTML5 `<video>` element.

A video resource can be referenced by `@href`, `@keyref`, and nested media-source components.

Playback behaviors such as auto-playing, looping, and muting are determined by attributes. When not specified, the default behavior is determined by the user agent that is used to present the media.

## Rendering expectations

The video resource typically is rendered in the main flow of the content.

Processors SHOULD scale the video resource when values are provided for the `@height` and `@width` attributes. The following expectations apply:

-   If a height value is specified and no width value is specified, processors SHOULD scale the width by the same factor as the height.
-   If a width value is specified and no height value is specified, processors SHOULD scale the height by the same factor as the width.
-   If both a height value and width value are specified, implementations MAY ignore one of the two values when they are unable to scale to each direction using different factors.

When a video resource cannot be rendered in a meaningful way, processors SHOULD render the contents of the `<fallback>` element, if it is present.

## Attributes

The available attributes vary based on the authoring format:

-   **XDITA and HDITA**

    The following attributes are available on this element: [ID attributes](../commonspec/specification/common/reuse-w-lwdita/../../langRef/attributes/attribute-groups.md#id-attributes), [link relationship attributes](../commonspec/specification/common/reuse-w-lwdita/../../langRef/attributes/attribute-groups.md#link-relationship-attributes), [localization attributes](../commonspec/specification/common/reuse-w-lwdita/../../langRef/attributes/attribute-groups.md#localization-attributes), [universal attributes](../commonspec/specification/common/reuse-w-lwdita/../../langRef/attributes/attribute-groups.md#universal-attributes), [`@props`](../commonspec/specification/common/reuse-w-lwdita/../../langRef/attributes/lwdita-common-attributes.md#props), and the attributes listed below.

-   **MDITA**

    There is no attribute support for the MDITA core profile. For the MDITA extended profile, attributes can be specified by using the HDITA representation.


-   **`@autoplay`**

    Specifies whether the resource automatically plays when it is presented. The following values are recognized: true and false. The default value is true.

-   **`@controls`**

    Specifies whether the presentation of the resource includes user interface controls. The following values are recognized: true and false. The default value is true.

-   **`@height`**

    Indicates the vertical dimension for the resulting display. The value of this attribute is a real number expressed in decimal notation, optionally followed by a unit of measure. The following units of measurement are supported: cm, em, in, mm, pc, pt, and px \(centimeters, ems, inches, millimeters, picas, points, and pixels, respectively\). The default unit is px \(pixels\). Possible values include:5, 5in, and 10.5cm.

-   **`@loop`**

    Specifies whether the resource loops when played. The following values are recognized: true and false. The default value is true.

-   **`@muted`**

    Specifies whether the resource is muted. The following values are recognized: true and false. The default value is true.

-   **`@tabindex`**

    Specifies whether the video resource can be focused and where it participates in sequential keyboard navigation. See [`@tabindex`](https://html.spec.whatwg.org/#the-tabindex-attribute) in the HTML specification \(WHATWG version\).

-   **`@width`**

    Indicates the horizontal dimension for the resulting display. The value of this attribute is a real number expressed in decimal notation, optionally followed by a unit of measure. The following units of measurement are supported: cm, em, in, mm, pc, pt, and px \(centimeters, ems, inches, millimeters, picas, points, and pixels, respectively\). The default unit is px \(pixels\). Possible values include:5, 5in, and 10.5cm.


For this element, the following considerations apply:

-   The `@format` attribute specifies the MIME type for the resource. This attribute enables processors to avoid loading unsupported resources. If `@format` is not specified and `@keyref` is specified, the effective type for the key named by the `@keyref` attribute is used as the value. If an explicit `@format` is not specified on either the `<video>` element or key definition, processors can use other means, such the URI file extension, to determine the effective MIME type of the resource.
-   The `@href` attribute specifies the absolute or relative URI of the video resource. If `@href` is specified, also specify `@format`.

-   **`@autoplay`**

    Specifies whether the resource automatically plays when it is presented. The following values are recognized: true and false. The default value is true.

-   **`@controls`**

    Specifies whether the presentation of the resource includes user interface controls. The following values are recognized: true and false. The default value is true.

-   **`@height`**

    Indicates the vertical dimension for the resulting display. The value of this attribute is a real number expressed in decimal notation, optionally followed by a unit of measure. The following units of measurement are supported: cm, em, in, mm, pc, pt, and px \(centimeters, ems, inches, millimeters, picas, points, and pixels, respectively\). The default unit is px \(pixels\). Possible values include:5, 5in, and 10.5cm.

-   **`@loop`**

    Specifies whether the resource loops when played. The following values are recognized: true and false. The default value is true.

-   **`@muted`**

    Specifies whether the resource is muted. The following values are recognized: true and false. The default value is true.

-   **`@tabindex`**

    Specifies whether the video resource can be focused and where it participates in sequential keyboard navigation. See [`@tabindex`](https://html.spec.whatwg.org/#the-tabindex-attribute) in the HTML specification \(WHATWG version\).

-   **`@width`**

    Indicates the horizontal dimension for the resulting display. The value of this attribute is a real number expressed in decimal notation, optionally followed by a unit of measure. The following units of measurement are supported: cm, em, in, mm, pc, pt, and px \(centimeters, ems, inches, millimeters, picas, points, and pixels, respectively\). The default unit is px \(pixels\). Possible values include:5, 5in, and 10.5cm.


## Examples

The following example demonstrates the use of video in an XDITA topic.

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

The following example demonstrates the use of video in an HDITA topic.

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

