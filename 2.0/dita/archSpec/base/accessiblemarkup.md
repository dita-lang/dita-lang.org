---
author: OASIS DITA Technical Committee
---

# Accessible content

DITA provides elements and attributes that are designed to make content accessible.

Many common types of content are not accessible to all readers. For example, an image cannot be rendered by a screen reader, and a video cannot be rendered in many formats. DITA includes markup features that are designed to convey alternate versions of such content.

-   **Alternate text for images**

    Alternate text is a textual description of an image. Systems often render the alternate text when the reader is using assistive technology or the image cannot be rendered.

    The `<alt>` element is available inside of images as a way to specify alternate text.

-   **Alternate text for areas of image maps**

    Within an image map, each defined area of the image can specify a cross reference. Whether or not the cross reference actually specifies a URI reference, the text within that cross reference functions as alternate or hover text.

-   **Long descriptions for media**

    A long description reference is a reference to a textual description of a graphic or object. This is typically used to provide an extended description when the graphic or object is too complicated to describe with alternate text.

    Processors can handle the reference in the following ways:

    -   Render the graphic or object as a link
    -   Make the extended description available to accessibility tools such as screen readers

While DITA provides the markup to enable these accessibility features, it is up to DITA processors to render output that uses the markup properly. exampleFor example, when a processor generates HTML5, alternate text must be specified using the `@alt` attribute on the `<img>` element.

**Parent topic:**[Accessibility](../../archSpec/base/accessibility.md)

