---
author: [OASIS DITA Technical Committee, OASIS DITA Technical Committee]
---

# Audio

Audio is sound that the human ear is capable of hearing.

## Syntax

The syntax for representing this component varies depending on the authoring format:

<table><thead><tr><th align="left" id="d35177e37">

Authoring format

</th><th align="left" id="d35177e41">

Syntax and example

</th></tr></thead><tbody><tr><td id="d35177e48">

**XDITA**

</td><td>

`<audio>`

 ```
**&lt;audio autoplay="false" controls="true" loop="false"
       muted="false"&gt;**
        <desc>Theme song for the LwDITA podcast</desc>
        <fallback>
          <p>The theme song is not available.</p>
        </fallback>
        <media-source href="theme-song.mp3"/>
        <media-track srclang="en" href="theme-song.vtt"/>**
&lt;/audio&gt;**
```

</td></tr><tr><td id="d35177e71">

**HDITA**

</td><td>

`<audio>`

 ```
**&lt;audio title="Theme song for the LwDITA podcast" controls&gt;**
  <source src="theme-song.mp3">
  <track src="theme-song.vtt" kind="captions" srclang="en">
  <p data-class="fallback">The theme song is not available.</p>
**&lt;/audio&gt;**
```

</td></tr><tr><td id="d35177e94">

**MDITA**

</td><td>

There is no specific support in the MDITA core profile. If needed, use an HDITA snippet.

</td></tr></tbody>
</table>## Usage information

The audio component is modeled on the HTML5 `<audio>` element.

An audio resource can be referenced by `@href`, `@keyref`, and nested media-source components.

Playback behaviors such as auto-playing, looping, and muting are determined by attributes. When not specified, the default behavior is determined by the user agent that is used to present the media.

## Rendering expectations

When an audio resource cannot be rendered in a meaningful way, processors SHOULD present the contents of the `<fallback>` element, if it is present.

## Attributes

The available attributes vary based on the authoring format:

-   **XDITA and HDITA**

    The following attributes are available on this element: [ID attributes](../commonspec/specification/common/reuse-w-lwdita/../../langRef/attributes/attribute-groups.md#id-attributes), [link relationship attributes](../commonspec/specification/common/reuse-w-lwdita/../../langRef/attributes/attribute-groups.md#link-relationship-attributes), [localization attributes](../commonspec/specification/common/reuse-w-lwdita/../../langRef/attributes/attribute-groups.md#localization-attributes), [universal attributes](../commonspec/specification/common/reuse-w-lwdita/../../langRef/attributes/attribute-groups.md#universal-attributes), [`@keyref`](../commonspec/specification/common/reuse-w-lwdita/../../langRef/attributes/lwdita-common-attributes.md#keyref), [`@props`](../commonspec/specification/common/reuse-w-lwdita/../../langRef/attributes/lwdita-common-attributes.md#props), and the additional attributes listed below.

-   **MDITA**

    For the MDITA core profile, the equivalent of the XDITA `@keyref` attribute is supported. For the MDITA extended profile, attributes can be specified by using the HDITA representation.


For XDITA and HDITA, the following additional attributes are also available:

-   **`@autoplay`**

    Specifies whether the resource automatically plays when it is presented. The following values are recognized: true and false. The default value is true.

-   **`@controls`**

    Specifies whether the presentation of the resource includes user interface controls. The following values are recognized: true and false. The default value is true.

-   **`@loop`**

    Specifies whether the resource loops when played. The following values are recognized: true and false. The default value is true.

-   **`@muted`**

    Specifies whether the resource is muted. The following values are recognized: true and false. The default value is true.

-   **`@tabindex`**

    Specifies whether the audio resource can be focused and where it participates in sequential keyboard navigation. See [`@tabindex`](https://html.spec.whatwg.org/dev/interaction.html#the-tabindex-attribute) in the HTML specification \(WHATWG version\).


\(XDITA and HDITA\) For this element, the following considerations apply:

-   The `@format` attribute specifies the MIME type for the resource. This attribute enables processors to avoid loading unsupported resources. If `@format` is not specified and `@keyref` is specified, the effective type for the key named by the `@keyref` attribute is used as the value. If an explicit `@format` is not specified on either the `<audio>` element or key definition, processors can use other means, such as the URI file extension, to determine the effective MIME type of the resource.
-   The `@href` attribute specifies the absolute or relative URI of the audio resource. If `@href` is specified, also specify `@format`.

-   **`@autoplay`**

    Specifies whether the resource automatically plays when it is presented. The following values are recognized: true and false. The default value is true.

-   **`@controls`**

    Specifies whether the presentation of the resource includes user interface controls. The following values are recognized: true and false. The default value is true.

-   **`@format`**

    The `@format` attribute specifies the MIME type for the resource. This attribute enables processors to avoid loading unsupported resources. If `@format` is not specified and `@keyref` is specified, the effective type for the key named by the `@keyref` attribute is used as the value. If an explicit `@format` is not specified on either the `<audio>` element or key definition, processors can use other means, such as the URI file extension, to determine the effective MIME type of the resource.

-   **`@href`**

    The `@href` attribute specifies the absolute or relative URI of the audio resource. If `@href` is specified, also specify `@format`.

-   **`@loop`**

    Specifies whether the resource loops when played. The following values are recognized: true and false. The default value is true.

-   **`@muted`**

    Specifies whether the resource is muted. The following values are recognized: true and false. The default value is true.

-   **`@tabindex`**

    Specifies whether the audio resource can be focused and where it participates in sequential keyboard navigation. See [`@tabindex`](https://html.spec.whatwg.org/dev/interaction.html#the-tabindex-attribute) in the HTML specification \(WHATWG version\).


## Examples

The section contains examples of how the audio component can be used.

The following example demonstrates the use of audio in an XDITA topic.

```
<?xml version="1.0" encoding="UTF-8"?>
<!DOCTYPE topic PUBLIC "-//OASIS//DTD LIGHTWEIGHT DITA Topic//EN" "lw-topic.dtd">
<topic id="theme-song">
  <title>Theme song for our podcast</title>
  <body>
    <audio autoplay="false"
      controls="true"
      loop="false"
      muted="false">
      <desc>Theme song for the LwDITA podcast</desc>
      <fallback>The theme song is not available.</fallback>
      <media-source value="theme-song.mp3"/>
      <media-track srclang="en" value="theme-song.vtt"/>
    </audio>
  </body>
</topic>
```

The following example demonstrates the use of audio in an HDITA topic.

```
<!DOCTYPE html>
<title>Theme song for our podcast</title>
<body>
  <article id="theme-song">
    <h1>Theme song for our podcast</h1>
    <audio title="Theme song for the LwDITA podcast" controls>
    <source src="theme-song.mp3">
    <track src="theme-song.vtt" kind="captions" srclang="en">
    <p data-class="fallback">The theme song is not available.</p>
</audio>
  </article>
</body>
```

**Parent topic:**[Multimedia components](../components/containers/multimedia-components.md)

