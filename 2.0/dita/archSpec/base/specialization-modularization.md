---
author: OASIS DITA Technical Committee
---

# Modularization

Modularization is at the core of DITA design and implementation. It enables reuse and extension of the DITA specialization hierarchy.

The DITA XML grammar files are a set of module files that declare the markup and entities that are required for each specialization. The document-type shell then integrates the modules that are needed for a particular authoring and publishing context.

Because all the pieces are modular, the task of developing a new information type or domain is simplified. An information architect can start with existing base types \(topic or map\)—or with an existing specialization if it comes close to matching their business requirements—and only develop an extension that adds the extra semantics or functionality that is required. A specialization reuses elements from ancestor modules, but it only needs to declare the elements and attributes that are unique to the specialization. This saves considerable time and effort, reduces error, enforces consistency, and makes interoperability possible.

Because all the pieces are modular, it is simpler to reuse different modules in different contexts.

exampleFor example, a company that produces machines can use the hazard statement domain, while a company that produces software can use the software, user interface, and programming domains. A company that produces health information for consumers can avoid using the standard domains. Instead, it develops a new domain that contains the elements necessary for capturing and tracking the comments made by medical professionals who review information for accuracy and completeness.

Because all the pieces are modular, new modules can be created and put into use without affecting existing document-type shells.

exampleFor example, a marketing division of a company can develop a new specialization for message campaigns and have their content authors begin using that specialization, without affecting any of the other information types that they have in place.

**Parent topic:**[Specialization](../../archSpec/base/specialization.md)

