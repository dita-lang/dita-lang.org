---
author: OASIS DITA Technical Committee
---

# Vocabulary modules

A DITA element type or attribute is declared in exactly one vocabulary module.

The following terminology is used to refer to DITA vocabulary modules:

-   **structural module**

    A vocabulary module that defines a top-level map or topic type.

-   **element domain module**

    A vocabulary module that defines one or more specialized element types that can be integrated into maps or topics.

-   **attribute domain module**

    A vocabulary module that defines exactly one specialization of either the `@base` or `@props` attribute.


For structural types, the module name is typically the same as the root element. For example, "task" is the name of the structural vocabulary module whose root element is `<task>`.

For element domain modules, the module name is typically a name that reflects the subject domain to which the domain applies, such as "highlight" or "software". Domain modules often have an associated short name, such as hi-d for the highlighting domain or sw-d for the software domain.

The name \(or short name\) of an element domain module is used to identify the module in `@class` attribute values. While module names need not be globally unique, module names must be unique within the scope of a given specialization hierarchy. The short name must be a valid XML name token.

Structural modules based on topic MAY define additional topic types that are then allowed to occur as subordinate topics within the top-level topic.

exampleFor example, a top-level topic type might require the use of subordinate topic types that would only ever be meaningful in the context of their containing type and thus would never be candidates for standalone authoring or aggregation using maps. In that case, the subordinate topic type can be declared in the module for the top-level topic type that uses it. However, in most cases, potential subordinate topics are best defined in their own vocabulary modules.

Domain elements intended for use in topics MUST ultimately be specialized from elements that are defined in the topic module. Domain elements intended for use in maps MUST ultimately be specialized from elements defined by or used in the map module. Maps share some element types with topics but no map-specific elements can be used within topics.

Structural modules also can define specializations of, or reuse elements from, domain or other structural modules. When this happens, the structural module becomes dependent.

**Parent topic:**[Specialization](../../archSpec/base/specialization.md)

