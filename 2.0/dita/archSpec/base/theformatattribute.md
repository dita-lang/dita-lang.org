---
author: [OASIS DITA Technical Committee, OASIS DITA Technical Committee]
---

# The `@format` attribute

The `@format` attribute identifies the format of the referenced resource.

The following values are explicitly supported:

-   **dita**

    Indicates that the target is a DITA topic or an element in a DITA topic. Unless otherwise specified, when `@format` is set to dita, the value for the `@type` attribute is treated as topic.

-   **ditamap**

    Indicates that the target is a DITA map. References to submaps can occur at any point in a map.

    When a topic reference specifies `format="ditamap"`, the topic reference resolves in one of the following ways:

    |Target of `<topicref>`|Resolution of `<topicref>`|
    |----------------------|--------------------------|
    |DITA map|The hierarchy of **all** the topic references in the targeted map|
    |Map branch|The hierarchy of the targeted map branch|

    When a topic reference targets an entire DITA map and the referenced map contains a relationship table, there are special processing implications, described in [How relationship tables establish linking relationships](establishing-links-with-reltable.md#nested-map-reltables).

    **Note:** If a `<topicref>` element that references a map contains child `<topicref>` elements, the processing behavior regarding the child `<topicref>` elements is undefined.


For other formats, the file extension without the "." character typically represents the format. For example, the following are all possible values for `@format`: html, pdf, or txt.

If no value is explicitly specified for the `@format` attribute, the following precedence rules apply:

1.  If the `@format` attribute is specified on a containing element within the map or within the related-links section of a topic, the value cascades from the closest containing element.
2.  If a value for the `@format` attribute does not cascade, the processing default is used. The processing default for the `@format` attribute is determined by inspecting the value of the `@href` attribute:
    1.  If the `@href` attribute specifies a file extension, the processing default for the `@format` attribute is that extension, after conversion to lower-case and with no leading period. The only exception to this is if the extension is `.xml`, in which case the default value for `@format` is dita.
    2.  If there is no file extension, but the `@href` value is an absolute URI whose scheme is http or https, then the processing default is html.
    3.  In all other cases where no file extension is available, the processing default is dita.

If the actual format of the referenced content differs from the effective value of the `@format` attribute, and a processor is capable of identifying such cases, it MAY recover gracefully and treat the content as its actual format. The processor MAY also issue a message.

For processors that support Lightweight DITA, the following table summarizes values for the `@format` attribute:

|Document type|Value of the `@format` attribute|Description|
|-------------|--------------------------------|-----------|
|Map|hditamap|HDITA map|
|mditamap|MDITA map|
|xditamap|XDITA map|
|Topic|hdita|HDITA topic|
|mdita|MDITA topic|
|xdita|XDITA topic|

**Parent topic:**[DITA linking](../../archSpec/base/dita-linking.md)

