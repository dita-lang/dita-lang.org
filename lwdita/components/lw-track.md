---
author: [OASIS DITA Technical Committee, OASIS DITA Technical Committee]
---

# Track

Media track settings specify the location of supplemental, text-based data for the referenced media, for example, subtitles or descriptions.

## Syntax

The syntax for representing this component varies depending on the authoring format:

<table><thead><tr><th align="left" id="d29511e37">

Authoring format

</th><th align="left" id="d29511e41">

Syntax and example

</th></tr></thead><tbody><tr><td id="d29511e48">

**XDITA**

</td><td>

`<media-track>`

 ```
<audio autoplay="false" controls="true" loop="false"
       muted="false">
  <desc>Theme song for the LwDITA podcast</desc>
  <fallback>
    <p>The theme song is not available.</p>
  </fallback>
  <media-source href="theme-song.mp3"/>
  **&lt;media-track srclang="en" href="theme-song.vtt"/&gt;**
</audio>
```

</td></tr><tr><td id="d29511e70">

**HDITA**

</td><td>

`<track>`

 ```
<audio title="Theme song for the LwDITA podcast" controls>
  <source src="theme-song.mp3">
  **&lt;track src="theme-song.vtt" kind="captions" srclang="en"&gt;**
  <p data-class="fallback">The theme song is not available.</p>
</audio>
```

</td></tr><tr><td id="d29511e92">

**MDITA**

</td><td>

There is no specific syntax for description in MDITA.

</td></tr></tbody>
</table>## Usage information

The media track settings are modeled on the `<track>` element used in HTML5 media elements. They refer to track resources that use [Web Video Text Track Format \(WebVTT\)](https://www.w3.org/TR/webvtt1/).

## Attributes

The available attributes vary based on the authoring format:

-   **XDITA and HDITA**

    The following attributes are available on this element: [ID attributes](../commonspec/specification/common/reuse-w-lwdita/../../langRef/attributes/attribute-groups.md#id-attributes), [localization attributes](../commonspec/specification/common/reuse-w-lwdita/../../langRef/attributes/attribute-groups.md#localization-attributes), [universal attributes](../commonspec/specification/common/reuse-w-lwdita/../../langRef/attributes/attribute-groups.md#universal-attributes), [`@keyref`](../commonspec/specification/common/reuse-w-lwdita/../../langRef/attributes/lwdita-common-attributes.md#keyref), and the additional attributes listed below.

-   **MDITA**

    For the MDITA core profile, the equivalent of the XDITA `@keyref` attribute is supported. For the MDITA extended profile, attributes can be specified by using the HDITA representation.


For XDITA and HDITA, the following additional attributes are also available:

-   **`@kind`**

    Specifies the usage for the track resource. This attribute is modeled on the `@kind` attribute on the HTML5 `<track>` element, as described by the [**HTML specification, WHATWG version**](https://html.spec.whatwg.org/dev/media.html#dom-TrackList-getKind-categories). The values for this attribute are derived from the HTML5 standard:

    -   **captions**

        Transcription or translation of the dialogue, sound effects, relevant musical cues, and other relevant audio information. This is intended for use when the soundtrack is unavailable, for example, because it is muted or because the user is hard-of-hearing. This information is rendered over the video and labeled as appropriate for hard-of-hearing users.

    -   **chapters**

        Chapter titles, which are intended to be used for navigating the media resource. The chapter titles are rendered as an interactive list in the interface for the user agent.

    -   **descriptions**

        Textual descriptions of the video component of the media resource. This is intended for audio synthesis when the visual component is unavailable, for example, because the user is interacting with the application without a screen or because the user is blind. Descriptions are synthesized as separate audio tracks.

    -   **metadata**

        Tracks intended for use from script. This metadata is not displayed by the user agent.

    -   **subtitles**

        Transcription or translation of the dialogue, suitable for when the sound is available but not understood, for example, because the user does not understand the language of the soundtrack. Subtitles are rendered over the video.

-   **`@srclang`**

    Specifies the language of the track resource.


For this element, the `@href` attribute specifies the URI of the track resource.

-   **`@href`**

    For this element, the `@href` attribute specifies the URI of the track resource.

-   **`@kind`**

    Specifies the usage for the track resource. This attribute is modeled on the `@kind` attribute on the HTML5 `<track>` element, as described by the [**HTML specification, WHATWG version**](https://html.spec.whatwg.org/dev/media.html#dom-TrackList-getKind-categories). The values for this attribute are derived from the HTML5 standard:

    -   **captions**

        Transcription or translation of the dialogue, sound effects, relevant musical cues, and other relevant audio information. This is intended for use when the soundtrack is unavailable, for example, because it is muted or because the user is hard-of-hearing. This information is rendered over the video and labeled as appropriate for hard-of-hearing users.

    -   **chapters**

        Chapter titles, which are intended to be used for navigating the media resource. The chapter titles are rendered as an interactive list in the interface for the user agent.

    -   **descriptions**

        Textual descriptions of the video component of the media resource. This is intended for audio synthesis when the visual component is unavailable, for example, because the user is interacting with the application without a screen or because the user is blind. Descriptions are synthesized as separate audio tracks.

    -   **metadata**

        Tracks intended for use from script. This metadata is not displayed by the user agent.

    -   **subtitles**

        Transcription or translation of the dialogue, suitable for when the sound is available but not understood, for example, because the user does not understand the language of the soundtrack. Subtitles are rendered over the video.

-   **`@srclang`**

    Specifies the language of the track resource.


## Examples

The following example demonstrates the use of track in an XDITA topic.

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

The following example demonstrates the use of track in an HDITA topic.

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

