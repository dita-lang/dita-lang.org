---
author: OASIS DITA Technical Committee
---

# Subject scheme maps

Subject scheme maps use key definitions to define collections of controlled values and subject definitions.

Controlled values are tokens that can be used as values for attributes. For example, the `@audience` attribute can take a value that identifies the users that are associated with a particular product. Typical values for a medical-equipment product might include therapist, oncologist, physicist, and radiologist. In a subject scheme map, an information architect can define a list of these values for the `@audience` attribute. An authoring tool can then provide a pick list for values for the attribute and generate a warning if an author attempts to specify a value that is not one of the controlled values.Controlled values can also be used to selectcontent for filtering and flagging at build time.

Subject definitions are classifications and sub-classifications that compose a tree. Subject definitions provide semantics that can be used in conjunction with taxonomies and ontologies.

Key references to controlled values are resolved to a key definition using the same precedence rules as apply to any other key. However, once a key is resolved to a controlled value, that key reference does not typically result in links or generated text.

**Draft comment:**Kristen J Eberlein 14 December 2021  


Adding content from DITAweb review D:

Comment from Stan Doherty: FWIW -- I do not understand what the second sentence \["However, omce a key is resolved ... "\] means.

Comment from Kris Eberlein: Quite simply, that key references resolved within a subjectScheme map do NOT generate variable text or produce links. Within the context of a subjectScheme map, the key references provide bindings or associations with subjects.

Comment from Robert Anderson: I think the root of this problem / this misunderstanding is the poor design choice of using the same keys/keyref attribute for Subject Schemes as we do for normal linking / variable text. We had an item in the 2.0 queue to completely redesign that, but never had anyone with the time / energy to work on it \(it would have been a big change\).

The problem here is that we have to explain "These don't work like normal keys, and you shouldn't use them in links and expect them to resolve as text or links" -- in a way that is clear, accurate, and short enough that it actually gets read. So, I think we need some work on this paragraph.

**Draft comment:**robander   
TO RESOLVE 13 May 2026: Can we take out the however, and maybe have a new paragraph instead of a second sentence, saying that keys bound to a controlled value do not typically result in links or generated text.

**Parent topic:**[Subject scheme maps and their usage](../../archSpec/base/subject-scheme-maps-and-usage.md)

