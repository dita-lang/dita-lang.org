---
author: OASIS DITA Technical Committee
---

# DTD: Coding requirements for structural modules

This topic covers general coding requirements for DTD-based structural modules.

## Required topic and map element attributes

The topic or map element type sets the `@ditaarch:DITAArchVersion` attribute to the version of DITA in use, typically by referencing the `arch-atts` parameter entity. It also sets the `@specializations` attribute to the `included-domains` entity.

The `@DITAArchVersion` and `@specializations` attributes give processors a reliable way to check the architecture version and look up the list of attribute domains that are available in the document type.

## Example

The following example shows how the `@DITAArchVersion` and `@specializations` attributes are defined for the `<concept>` element in DITA 2.0. Ellipses indicate where the code is snipped for brevity:

```
<!-- ============================================================= -->
<!--                    ELEMENT DECLARATIONS                       -->
<!-- ============================================================= -->

<!-- ... -->

<!--                    LONG NAME: Concept                         -->

<!-- ... -->

<!ATTLIST concept    
  %concept.attributes;
  **%arch-atts;
  specializations  CDATA  "&amp;included-domains;**">
```

## Controlling nesting in topic types

A structural module that defines a new topic type typically uses a parameter entity to define a default for what topic types are permitted to nest. When this is done consistently, a shell that includes multiple structural modules can set common nesting rules for all topic types by setting `%info-types;` entity.

The following rules apply when using parameter entities to control nesting.

-   **Parameter entity name**

    The name of the parameter entity is the topic element name plus the `-info-types` suffix.

#     Example

    For example, the name of the parameter entity for the concept topic is `concept-info-types`.

-   **Parameter entity value**

    To set up default topic nesting rules, set the entity to the desired topic elements. The default topic nesting is used when a document-type shell does not set up different rules.

#     Example

    For example, the following parameter entity sets up default nesting so that `<concept>` will nest only other `<concept>` topics:

    ```
    <!-- ============================================================= -->
    <!--                    ELEMENT DECLARATIONS                       -->
    <!-- ============================================================= -->
    
    <!ENTITY % concept-info-types
                  "%info-types;"
    >
    ```

#     Example

    As an additional example, the following parameter entity sets up a default that will not allow any nesting:

    ```
    <!ENTITY % glossentry-info-types "no-topic-nesting">
    ```

-   **Content model of the root element**

    The last position in the content model defined for the root element of a topic type should be the `*topictype*-info-types` parameter entity.

    A document-type shell then can control how topics are allowed to nest for this specific topic type by redefining the `*topictype*-info-types` entity for each topic type.

#     Example

    For example, with the following content model defined for `<concept>`, a document-type shell that uses the concept specialization can control which topics are nested in `<concept>` by redefining the `concept-info-types` parameter entity:

    ```
    example<!ENTITY % concept.content
      "((%title;),
        (%abstract; | %shortdesc;)?, 
        (%prolog;)?, 
        (%conbody;)?, 
        (%related-links;)?,
        **\(%concept-info-types;\)\***)"
    >
    ```


In certain cases, you do not need to use an `info-types` parameter entity to control topic nesting:

-   If you want a specialized topic type to disallow nested topics, regardless of context, it can be defined without any entity or any nested topics.
-   If you want a specialized topic type to only allow specific nesting patterns, such as allowing only other topic types that are defined in the same module, it can nest those topics directly in the same way that other nested elements are defined.

**Parent topic:**[DTD coding requirements](../../archSpec/base/dtd-requirements.md)

