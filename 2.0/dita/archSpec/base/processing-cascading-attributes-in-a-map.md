---
author: [OASIS DITA Technical Committee, OASIS DITA Technical Committee]
---

# Processing cascading attributes in a map

Certain rules apply to processors when they process cascading attributes in a map.

When determining the effective value of an attribute, processors MUST evaluate each applicable attribute for each map element in the following order:

1.  Evaluate `@conref` and `@keyref` attributes for the element. After resolving, continue to following steps to determine effective values.
2.  Evaluate explicit values in the document instance. If the attribute is explicitly specified on the element, that value is part of the effective value for this element.
3.  Evaluate default and fixed values from the XML grammar for elements where no explicit value is specified on the element itself.
4.  Evaluate cascading values from containing map elements.
    -   For single-value attributes, cascading applies only when no value is established by steps 2 or 3.
    -   For multi-value attributes, cascading and merging behavior MUST follow the rules of `@cascade`.
5.  Evaluate default values supplied by controlled values files for elements where no value is established by steps 2 through 4.
6.  Apply processing-supplied default values only when no value is established by steps 2 through 5.
7.  When values cascade from one map to a referenced map, only values established by steps 2 through 5 are eligible to cascade. Values established only by processing-supplied defaults in step 6 MUST NOT cascade to referenced maps.
8.  For each referenced map, repeat this sequence recursively. See [Map-to-map cascading behaviors](map-to-map-cascading-of-metadata.md) for additional map-to-map cascading rules and exceptions.

exampleFor example, in `<topicref toc="yes">`, the explicit `@toc` value is established in item [2](#explicit-values). Because `@toc` is a single-value attribute, cascading values from containing elements do not replace that value on the same element. The established value can still cascade to descendant elements when those descendant elements are evaluated at item [4](#attributes-cascade).

**Parent topic:**[Cascading of metadata attributes in a DITA map](../../archSpec/base/cascading-in-a-ditamap.md)

