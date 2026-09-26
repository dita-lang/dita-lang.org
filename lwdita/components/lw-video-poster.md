---
author: [OASIS DITA Technical Committee, OASIS DITA Technical Committee]
---

# Video poster

A video poster is an image that is displayed while a video is loading.

## Syntax

<table><thead><tr><th align="left" id="d26648e33">

Authoring format

</th><th align="left" id="d26648e37">

Syntax and example

</th></tr></thead><tbody><tr><td id="d26648e44">

**XDITA**

</td><td>

`<video-poster>`

 ```
<video height="300px" width="400px" loop="false"
                muted="false">
  <desc>Video about the Sensei Sushi promise.</desc>
  <fallback>
    <image href="video-not-available.png">
      <alt>This video cannot be displayed.</alt>
    </image>
  </fallback>
  **&lt;video-poster href="sensei-video.jpg"/&gt;**
  <media-source href="sensei-video.mp4"/>
  <media-source href="sensei-video.ogg"/>
  <media-source href="sensei-video.webm"/>
  <media-track srclang="en" href="sensei-video.vtt"/> **
&lt;/video&gt;**
```

</td></tr><tr><td id="d26648e68">

**HDITA**

</td><td>

`@poster` on `<video>`

 ```
<video height="300" width="400" 
         title="Video about the Sensei Sushi promise" controls 
        ** poster="sensei-video.jpg"**>
  <source src="sensei-video.mp4"/>
  <source src="sensei-video.ogg"/>
  <source src="sensei-video.webm"/> 
  <track srclang="en" src="sensei-video.vtt"/>
  <img src="video-not-available.png" alt="This video cannot be displayed."/>
**&lt;/video&gt;**
```

</td></tr><tr><td id="d26648e95">

**MDITA**

</td><td>

There is no specific support in the MDITA core profile. If needed, use an HDITA snippet.

</td></tr></tbody>
</table>## Usage information

The video poster component is modeled on the `@poster` attribute that can be specified on the HTML5 `<video>` element.

## Attributes

The available attributes vary based on the authoring format:

-   **XDITA**

    The following attributes are available on this element: [link relationship attributes](../commonspec/specification/common/reuse-w-lwdita/../../langRef/attributes/attribute-groups.md#link-relationship-attributes), [localization attributes](../commonspec/specification/common/reuse-w-lwdita/../../langRef/attributes/attribute-groups.md#localization-attributes), [universal attributes](../commonspec/specification/common/reuse-w-lwdita/../../langRef/attributes/attribute-groups.md#universal-attributes), and [`@keyref`](../commonspec/specification/common/reuse-w-lwdita/../../langRef/attributes/lwdita-common-attributes.md#keyref).

-   **HDITA**

    The following attributes are available on this element: [link relationship attributes](../commonspec/specification/common/reuse-w-lwdita/../../langRef/attributes/attribute-groups.md#link-relationship-attributes), [localization attributes](../commonspec/specification/common/reuse-w-lwdita/../../langRef/attributes/attribute-groups.md#localization-attributes), [universal attributes](../commonspec/specification/common/reuse-w-lwdita/../../langRef/attributes/attribute-groups.md#universal-attributes), and [`@keyref`](../commonspec/specification/common/reuse-w-lwdita/../../langRef/attributes/lwdita-common-attributes.md#keyref).

-   **MDITA**

    For the MDITA core profile, the equivalent of the XDITA `@keyref` attribute is supported. For the MDITA extended profile, attributes can be specified by using the HDITA representation.



## Examples

The following example demonstrates the use of video poster in an XDITA topic.

```
Example needed
```

The following example demonstrates the use of video-poster in an HDITA topic.

```
Example needed
```

**Parent topic:**[Multimedia components](../components/containers/multimedia-components.md)

