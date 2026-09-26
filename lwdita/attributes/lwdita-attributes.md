---
author: OASIS DITA Technical Committee
---

# LwDITA attributes in the authoring formats

This topic lists the XDITA attributes and their equivalents in HDITA and MDITA.

|Attribute group|XDITA|HDITA|MDITA core profile|MDITA extended profile|
|---------------|-----|-----|------------------|----------------------|
|**Architectural attributes**|`@xmlns:ditaarch`|Not applicable|Not applicable|Not applicable|
|`@ditaarch:DITAArchVersion`|Not applicable|Not applicable|Not applicable|
|`@specializations`|Not applicable|Not applicable|Not applicable|
|**Common map attributes**|`@processing-role`|`@data-processing-role`|Not applicable|HDITA representation|
|**Data-element attributes**|`@name`|Not applicable|Not applicable|Not applicable|
|`@value`|Not applicable|Not applicable|Not applicable|
|**Dimension attributes**|`@height`|`@height`|Not applicable|HDITA representation|
|`@width`|`@width`|Not applicable|HDITA representation|
|**Display attributes**|`@expanse`|Not applicable|Not applicable|Not applicable|
|`@frame`|Not applicable|Not applicable|Not applicable|
|`@scale`|Not applicable|Not applicable|Not applicable|
|**ID and conref attributes**|`@id`|`@id`|Not applicable|HDITA representation|
|`@conref`|`@data-conref`|Not applicable|HDITA representation|
|**Link relationship attributes**|`@href`|`@href`|Not applicable|HDITA representation|
|`@format`|`@type`|Not applicable|HDITA representation|
|`@scope`|`@rel`|Not applicable|HDITA representation|
|**Localization attributes**|`@dir`|`@dir`|Not applicable|HDITA representation|
|`@translate`|`@translate`|Not applicable|HDITA representation|
|`@xml:lang`|`@lang`|Not applicable|HDITA representation|
|**Multimedia attributes**|`@autoplay`|`@autoplay`|Not applicable|HDITA representation|
|`@controls`|`@controls`|Not applicable|HDITA representation|
|`@loop`|`@loop`|Not applicable|HDITA representation|
|`@muted`|`@muted`|Not applicable|HDITA representation|
|`@tabindex`|`@tabindex`|Not applicable|HDITA representation|
|**Simple table attributes**|`@colspan`|`@colspan`|Not applicable|Not applicable|
|`@headers`|`@headers`|Not applicable|Not applicable|
|`@rowspan`|`@rowspan`|Not applicable|Not applicable|
|`@scope`|`@scope`|Not applicable|Not applicable|
|**Universal attributes**|`@class`|`@data-class`|Not applicable|HDITA representation|
|`@outputclass`|`@class`|Not applicable|HDITA representation|
|**Ungrouped attributes**|`@keys`|`@data-keys`|Not applicable|HDITA representation|
|`@keyref`|`@data-keyref`|`[key-value]`|`[key-value]`|
|`@props`|`@data-props`|Not applicable|HDITA representation|
|**Attributes defined directly in topics**|`@callout`|Not applicable|Not applicable|Not applicable|
|`@kind`|`@kind`|Not applicable|Not applicable|
|`@poster`| | | |
|`@posterkeyref`| | | |
|`@srclang`|`@srclang`|Not applicable|Not applicable|
|`@type`|`@data-type`|Not applicable|Not applicable|
|`@xml:space`|Not applicable|Not applicable|Not applicable|

## Representing attributes in MDITA

With the exception of key reference, attributes are not available in the MDITA core profile. In the MDITA extended profile, you can express attributes using their HDITA representation.

## Reuse attribute in MDITA

In an MDITA core-profile topic, a key reference is represented using the GitHub Flavored Markdown syntax for shortcut reference links: `[key-value]`. There is no equivalent for content reference in the MDITA core profile.

**Parent topic:**[Attributes](../attributes/attributes.md)

