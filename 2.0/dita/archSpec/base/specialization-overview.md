---
author: OASIS DITA Technical Committee
---

# Overview of specialization

Specialization allows information architects to define new kinds of information \(new structural types or new domains of information\), while reusing as much of existing design and code as possible, and minimizing or eliminating the costs of interchange, migration, and maintenance.

Specialization modules enable information architects to create new element types and attributes. These new element types and attributes are derived from existing element types and attributes.

In traditional XML applications, all semantics for a given element instance are bound to the element type, such as `<para>` for a paragraph or `<title>` for a title. The XML specification provides no built-in mechanism for relating two element types to say "element type B is a subtype of element type A".

In contrast, the DITA specialization mechanism provides a standard mechanism for declaring that an element type or attribute is derived from an ancestor type. This means that a specialized type inherits the semantics and default processing behavior from its ancestor type. Additional processing behavior optionally can be associated with the specialized descendant type.

exampleFor example, the `<section>` element type is part of the DITA base. It represents an organizational division in a topic. Within the task information type \(itself a specialization of `<topic>`\), the `<section>` element type is further specialized to other element types \(such as `<prereq>` and `<context>`\) that provide more precise semantics about the type of organizational division that they represent. The specialized element types inherit both semantic meaning and default processing from the ancestor elements.

There are two types of DITA specializations:

-   **Structural specialization**

    Structural specializations are developed from either topic or map types. Structural specializations enable information architects to add new document types to DITA. The structures defined in the new document types either directly use, or inherit from, elements found in other document types. For example, concept, task, and reference are specialized from topic, and bookmap is specialized from map.

-   **Domain specialization**

    Domain specializations are developed from elements defined within topic or map, or from the `@props` or `@base` attributes. They define markup for a specific information domain or subject area. Domain specializations can be added to document-type shells.


Each type of specialization module represents an “is a” hierarchy, in object-oriented terms, with each structural type or domain being a subclass of its parent. For example, a specialization of task is still a task, and a specialization of the user interface domain is still part of the user interface domain. A given domain can be used with any map or topic type. In addition, specific structural types might require the use of specific domains.

Use specialization when you need a new structural type or domain. Specialization is appropriate in the following circumstances:

-   You need to create markup to represent new semantics \(meaningful categories of information\). This might enable you to have increased consistency or descriptiveness in your content model.
-   You have specific needs for output processing and formatting that cannot be addressed using the current content model.

Do not use specialization to simply eliminate element types from specific content models. Use constraint modules to restrict content models and attribute lists without changing semantics.

**Parent topic:**[Specialization](../../archSpec/base/specialization.md)

