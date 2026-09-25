---
author: OASIS DITA Technical Committee
---

# DTD: Use of entities

DITA-based DTDs use entities to implement specialization and element configuration. Therefore, an understanding of entities is critical when working with DTD-based document-type shells, vocabulary modules, or element-configuration modules \(constraint and expansion\).

Entities can be defined multiple times within a single document type, but only the first definition is effective. How entities work shapes DTD coding practices. The following list describes a few of the more important entities that are used in DITA DTDs:

-   **Elements defined as entities**

    Every element in a DITA DTD is defined as an entity. When elements are added to a content model, they are added using the entity. This enables extension with domain specializations.

#     Example

    For example, the entity `%ph;` usually just means the `<ph>` element, but it can be defined in a document-type shell to mean "`<ph>` plus the elements from the highlighting domain". Because the document-type shell places that entity definition before the usual definition, every element that includes `%ph;` in its content model now includes `<ph>` plus every element in the highlighting domain that is specialized from `<ph>`.

-   **Content models defined as entities**

    Every element in a DITA DTD defines its content model using an entity. This enables element configuration.

#     Example

    For example, the content model for the `<p>` element is set to `%ph.content;`, and the `%ph.content;` entity defines the actual content model. A constraint module then can redefine the `%ph.content;` entity to remove selected elements from the content model, or an expansion module can redefine the `%ph.content;` entity to add elements to the content model.

-   **Attribute sets defined as entities**

    Every element name in a DITA DTD defines its attributes using a parameter entity. This enables element configuration.

#     Example

    For example, the attribute list for the `<ph>` element is set to `%ph.attributes;`, and the `%ph.attributes;` entity defines the actual attribute list. A constraint module then can redefine the entity to remove attributes from the attribute list, or an expansion module can redefine the entity to add attributes to the attribute list.


**Note:** When constructing an element-configuration module or document-type shell, new entities are usually viewed as "redefinitions" because they redefine entities that already exist.However, these new definitions only work because they are added to a document-type shell before the existing definitions. Most topics about DITA DTDs, including others in this specification, describe these overrides as redefinitions to ease understanding.

**Parent topic:**[DTD coding requirements](../../archSpec/base/dtd-requirements.md)

