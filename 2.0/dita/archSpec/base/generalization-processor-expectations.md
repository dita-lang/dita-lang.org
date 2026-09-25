---
author: OASIS DITA Technical Committee
---

# Processor expectations when generalizing elements

Generalization processors convert elements from one or more modules into their less specialized form. The list of modules can be supplied to a generalization processor, or it can be inferred based on knowledge of a target document-type shell.

The person or application initiating a generalization process can supply the source and target modules for each generalization, for example, "generalize from reference to topic". Multiple target modules can be specified, for example, "generalize from reference to topic and from user-interface domain to topic". When the source and target modules are not supplied, the generalization process is assumed to be from all structural types to the base \(topic or map\), and no generalization is performed for domains.

The person or application initiating a generalization process also can supply the target document-type shell. When the target document-type shell is not supplied, the generalized document will not contain a reference to a document-type shell.

A generalization processor SHOULD be able to handle cases where it is given:

-   Only source modules for generalization \(in which case the designated source types are generalized to topic or map\)
-   Only target modules for generalization \(in which case all descendants of each target are generalized to that target\)
-   Both \(in which case only the specified descendants of each target are generalized to that target\)

For each structural type instance, the generalization processor checks whether the structural type instance is a candidate for generalization, or whether it has domains that are candidates for generalization. It is important to be selective about which structural type instances to process; if the process simply generalizes every element based on its `@class` attribute values, an instruction to generalize "reference" to "topic" could leave a specialization of reference with an invalid content model, since any elements it reuses from "reference" would have been renamed to topic-level equivalents.

The `@class` attribute for the root element of the structural type is checked before generalizing structural types:

||Source module unspecified|Source module specified|
|---|-------------------------|-----------------------|
|**Target module unspecified**|Generalize this structural type to its base ancestor|Check whether the root element of the topic type matches a specified source module; generalize to its base ancestor if it does, otherwise ignore the structural type instance unless it has domains to generalize.|
|**Target module specified**|Check whether the `@class` attribute contains the target module. If it does contain the target, rename the element to the value associated with the target module. Otherwise, ignore the element.|It is an error if the root element matches a specified source but its `@class` attribute does not contain the target. If the root element matches a specified source module and its `@class` attribute does contain the target module, generalize to the target module. Otherwise, ignore the structural type instance unless it has domains to generalize.|

For each element in a candidate structural type instance:

||Source module unspecified|Source module specified|
|---|-------------------------|-----------------------|
|**Target module unspecified**|If the `@class` attribute starts with "-" \(part of a structural type\), rename the element to its base ancestor equivalent. Otherwise ignore it.|Check whether the last value of the `@class` attribute matches a specified source; generalize to its base ancestor if it does, otherwise ignore the element.|
|**Target module specified**|Check whether the `@class` attribute contains the target module; rename the element to the value associated with the target module if it does contain the target, otherwise ignore the element.|It is an error if the last value in the `@class` attribute matches a specified source but the previous values do not include the target. If the last value in the `@class` attribute matches a specified source module and the previous values do include the target module, rename the element to the value associated with the target module. Otherwise, ignore the element.|

When renaming elements during round-trip generalization, the generalization processor SHOULD preserve the values of all attributes. When renaming elements during one-way or migration generalization, the process SHOULD preserve the values of all attributes except the `@class` attribute, which is supplied by the target document type.

**Parent topic:**[Generalization](../../archSpec/base/generalization.md)

