---
author: OASIS DITA Technical Committee
---

# Determining effective attribute values

This topic defines the precedence rules for determining the effective value of an attribute.

For DITA map attributes, effective values are resolved in this order, after resolution of `@conref` and `@keyref`: explicit value, XML grammar default or fixed value, cascading value, controlled-value default, and processing-supplied default.

For single-value attributes, once a value is established at a higher-precedence step, lower-precedence steps do not replace it. For multi-value attributes, additive and non-additive behavior follows the rules of the `@cascade` attribute.

The complete normative cascading algorithm is defined in [Processing cascading attributes in a map](../../common/../archSpec/base/processing-cascading-attributes-in-a-map.md).

For map processing details, including haw attributes cascade across referenced maps and the rule that processing-supplied defaults do not cascade to referenced maps, see [Processing cascading attributes in a map](processing-cascading-attributes-in-a-map.md) and [Map-to-map cascading behaviors](map-to-map-cascading-of-metadata.md).

For controlled-value binding and validation behavior, see [Binding controlled values to an attribute](binding-controlled-values-to-attribute.md) and [Processing controlled attribute values](processing-controlled-attribute-values.md).

**Parent topic:**[DITA processing](../../archSpec/base/ditaprocessing.md)

