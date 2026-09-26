---
author: [OASIS DITA Technical Committee, OASIS DITA Technical Committee]
---

# Image

An image is a reference to artwork that is stored outside of the content.

## Syntax

The syntax for representing this component varies depending on the authoring format:

<table><thead><tr><th align="left" id="d24804e38">

Authoring format

</th><th align="left" id="d24804e42">

Syntax and example

</th></tr></thead><tbody><tr><td id="d24804e49">

**XDITA**

</td><td>

`<image>`

 ```
**&lt;image href="save.gif&gt;**
  <alt>Save icon</alt>
**&lt;/image&gt;**
```

</td></tr><tr><td id="d24804e72">

**HDITA**

</td><td>

`<img>`

```
**&lt;img alt="Save icon" href="save.gif"/&gt;**
```

</td></tr><tr><td id="d24804e91">

**MDITA**

</td><td>

`![alt text](image-name.jpg)````
**!\[Save icon\] \(save.gif\]**
```

</td></tr></tbody>
</table>## Rendering expectations

The referenced image typically is rendered in the main flow of the content.

## Attributes

The available attributes vary based on the authoring format:

-   **XDITA and HDITA**

    The following attributes are available on this element: [link relationship attributes](../commonspec/specification/common/reuse-w-lwdita/../../langRef/attributes/attribute-groups.md#link-relationship-attributes), [localization attributes](../commonspec/specification/common/reuse-w-lwdita/../../langRef/attributes/attribute-groups.md#localization-attributes), [universal attributes](../commonspec/specification/common/reuse-w-lwdita/../../langRef/attributes/attribute-groups.md#universal-attributes), [`@keyref`](../commonspec/specification/common/reuse-w-lwdita/../../langRef/attributes/lwdita-common-attributes.md#keyref), and the additional attributes listed below.

-   **MDITA**

    For the MDITA core profile, the equivalent of the XDITA `@keyref` attribute is supported. For the MDITA extended profile, attributes can be specified by using the HDITA representation.


For XDITA and HDITA, the following additional attributes are also available:

-   **`@height`**

    Specifies the vertical dimension for the resulting display. The value of this attribute is a real number expressed in decimal notation, optionally followed by a unit of measure. The following units of measurement are supported: cm, em, in, mm, pc, pt, and px \(centimeters, ems, inches, millimeters, picas, points, and pixels, respectively\). The default unit is px \(pixels\). Possible values include:5, 5in, and 10.5cm.

-   **`@width`**

    Specifies the horizontal dimension for the resulting display. The value of this attribute is a real number expressed in decimal notation, optionally followed by a unit of measure. The following units of measurement are supported: cm, em, in, mm, pc, pt, and px \(centimeters, ems, inches, millimeters, picas, points, and pixels, respectively\). The default unit is px \(pixels\). Possible values include:5, 5in, and 10.5cm.


-   **`@height`**

    Specifies the vertical dimension for the resulting display. The value of this attribute is a real number expressed in decimal notation, optionally followed by a unit of measure. The following units of measurement are supported: cm, em, in, mm, pc, pt, and px \(centimeters, ems, inches, millimeters, picas, points, and pixels, respectively\). The default unit is px \(pixels\). Possible values include:5, 5in, and 10.5cm.

-   **`@width`**

    Specifies the horizontal dimension for the resulting display. The value of this attribute is a real number expressed in decimal notation, optionally followed by a unit of measure. The following units of measurement are supported: cm, em, in, mm, pc, pt, and px \(centimeters, ems, inches, millimeters, picas, points, and pixels, respectively\). The default unit is px \(pixels\). Possible values include:5, 5in, and 10.5cm.


## Examples

The following example demonstrates the use of image in an XDITA topic.

```
<?xml version="1.0" encoding="UTF-8"?>
<!DOCTYPE topic PUBLIC "-//OASIS//DTD LIGHTWEIGHT DITA Topic//EN" "lw-topic.dtd">
<topic id="franchise-intro">
  <title>An innovative, attractive, and out of the ordinary concept</title>
  <shortdesc>Are you interested in investing with us? Welcome to our franchise information package.</shortdesc>
  <body>
    <p>We offer <image href="images/plus-sign.jpg">
        <alt>Icon for a plus sign</alt>
      </image> than 30 exclusive creations for original rolls, from the California roll to sushi
      with BBQ chicken or grilled steak.</p>
  </body>
</topic>
```

The following example demonstrates the use of image in an HDITA topic.

```
<!DOCTYPE html>
<title>An innovative, attractive, and out of the ordinary concept</title>
<body>
  <article id="franchise-intro">
    <h1>An innovative, attractive, and out of the ordinary concept</h1>
    <p>Are you interested in investing with us? Welcome to our franchise information package.</p>
    <p>We offer <img src="images/plus-sign.jpg" alt="Icon for a plus sign" /> than 30 exclusive creations for original rolls, from the California roll to sushi with BBQ chicken or grilled steak.</p>
  </article>
</body>
```

The following example demonstrates the use of image in an MDITA topic.

```
# An innovative, attractive, and out of the ordinary concept

Are you interested in investing with us? Welcome to our franchise
information package.

We offer ![Icon for a plus sign](images/plus-sign.jpg) than 30
exclusive creations for original rolls, from the California roll to
sushi with BBQ chicken or grilled steak.
```

**Parent topic:**[Body components](../components/containers/body-components.md)

