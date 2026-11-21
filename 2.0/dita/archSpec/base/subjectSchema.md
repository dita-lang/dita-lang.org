---
author: OASIS DITA Technical Committee
---

# Subject scheme maps

Subject scheme maps use key definitions to define collections of controlled values and subject definitions.

Controlled values are tokens that can be used as values for attributes. exampleFor example, the `@audience` attribute can take a value that identifies the users that are associated with a particular product. Typical values for a medical-equipment product might include therapist, oncologist, physicist, and radiologist. In a subject scheme map, an information architect can define a list of these values for the `@audience` attribute. An authoring tool can then provide a pick list for values for the attribute and generate a warning if an author attempts to specify a value that is not one of the controlled values. Controlled values can also be used to select content for filtering and flagging at build time.

Subject definitions are classifications and sub-classifications that compose a tree. Subject definitions provide semantics that can be used in conjunction with taxonomies and ontologies.

Key references to controlled values are resolved to a key definition using the same precedence rules as apply to any other key.

Key references to controlled values typically do not result in links or generated text.

**Parent topic:**[Subject scheme maps and their usage](../../archSpec/base/subject-scheme-maps-and-usage.md)

