---
author: OASIS DITA Technical Committee
---

# DTD: Coding requirements for document-type shells

A DTD-based document-type shell is organized into sections. Each section contains entity declarations that follow specific coding rules.

The DTD-based approach to configuration, specialization, and element configuration \(constraint and expansion\) relies heavily upon parameter entities. Several of the parameter entities that are declared in document-type shells contain references to other parameter entities. Because parameter entities must be declared before they are used, the order of the sections in a DTD-based document-type shell is significant.

A DTD-based document-type shell contains the following sections:

1.  [Topic \[or map\] entity declarations](#topic-map-entity-declarations)
2.  [Domain constraint integration](#domain-constraint-integration)
3.  [Domain entity declarations](#domain-entity-declarations)
4.  [Domain attributes declarations](#domain-attributes-declarations)
5.  [Domain extensions](#domain-extensions)
6.  [Domain attribute extensions](#domain-attribute-extensions)
7.  [Topic nesting override](#topic-nesting-overrides)
8.  [Specializations attribute override](#domains-attribute-override)
9.  [Element-type configuration integration](#content-constraint-integration)
10. [Topic \[or map\] element integration](#topic-map-element-integration)
11. [Domain element integration](#domain-element-integration)

Each of the sections in a DTD-based document-type shell follows a pattern. These patterns help ensure that the shell follows XML parsing rules for DTDs. They also establish a modular design that simplifies creation of new document-type shells.

-   **Topic \[or map\] entity declarations**

    This section declares and references an external parameter entity for each of the following items:

    -   The entity declaration module \(`.ent` file\) for the top-level topic or map type that the document-type shell configures
    -   The entity declaration modules for anyadditional structural modules that are used by the document-type shell
    The parameter entity is named `*typeName*-dec`.

#     Example

    In the following example, the entity declaration module for the `<concept>` specialization is integrated into a document-type shell:

    ```
    
    <!-- ============================================================= -->
    <!--              TOPIC ENTITY DECLARATIONS                        -->
    <!-- ============================================================= -->
    
    <!ENTITY % concept-dec     
      PUBLIC "-//OASIS//ENTITIES DITA 2.0 Concept//EN" 
             "concept.ent"
    >%concept-dec;
    ```

-   **Domain constraint integration**

    This section declares and references an external parameter entity for each domain-constraint module that is integrated into the document-type shell.

    The parameter entity is named `*descriptorDomainName*-c-dec`.

#     Example

    In the following example, the entity file for a constraint module that reduces the highlighting domain to a subset is integrated in a document-type shell:

    ```
    <!-- ============================================================= -->
    <!--                    DOMAIN CONSTRAINT INTEGRATION              -->
    <!-- ============================================================= -->
    
    <!ENTITY % HighlightingDomain-c-dec  
      PUBLIC "-//ACME//ENTITIES DITA Highlighting Domain Constraint//EN" 
      "acme-HighlightingDomainConstraint.mod"
    >%basic-HighlightingDomain-c-dec;
    ```

-   **Domain entity declarations**

    This section declares and references an external parameter entity for each element-domain module that is integrated into the document-type shell.

    The parameter entity is named `*shortDomainName*-dec`.

#     Example

    In the following example, the entity file for the highlighting domain is included in a document-type shell:

    ```
    <!-- ============================================================= -->
    <!--             DOMAIN ENTITY DECLARATIONS                        -->
    <!-- ============================================================= -->
    
    <!ENTITY % hi-d-dec PUBLIC
        "-//OASIS//ENTITIES DITA 2.0 Highlight Domain//EN" 
        "highlightDomain.ent"
    >%hi-d-dec;
    ```

-   **Domain attributes declarations**

    This section declares and references an external parameter entity for each attribute domain that is integrated into the document-type shell.

    The parameter entity is named `*domainName*Att-dec`.

#     Example

    In the following example, the entity file for the `@deliveryTarget` attribute domain is included in a document-type shell:

    ```
    <!-- ============================================================= -->
    <!--             DOMAIN ATTRIBUTES DECLARATIONS                    -->
    <!-- ============================================================= -->
    
    <!ENTITY % deliveryTargetAtt-d-dec
      PUBLIC "-//OASIS//ENTITIES DITA 2.0 Delivery Target Attribute Domain//EN"
             "deliveryTargetAttDomain.ent"
    >%deliveryTargetAtt-d-dec;
    ```

-   **Domain extensions**

    This section declares and references a parameter entity for each element that is extended by one or more domain modules.These entities are used by the element-domain modules that are declared later in the document-type shell to redefine the content models. Redefining the content models adds domain specializations wherever the base element is allowed.

#     Example

    In the following example, the entity for the `<pre>` element is redefined to add specializations from the programming, software, and user interface domains:

    ```
    <!-- ============================================================= -->
    <!--                    DOMAIN EXTENSIONS                          -->
    <!-- ============================================================= -->
    
    <!ENTITY % pre
        "pre        | 
         %pr-d-pre; | 
         %sw-d-pre; | 
         %ui-d-pre;">
    ```

-   **Domain attribute extensions**

    This section redefines the parameter entity for each attribute domain that is integrated globally into the document-type shell. The redefinition adds an extension to the parameter entity for the relevant attribute.

#     Example

    In the following example, the parameter entities for the `@base` and `@props` attributes are redefined to include the `@newfrombase`, `@othernewfrombase`, `@new`, and `@othernew` attributes:

    ```
    <!-- ============================================================= -->
    <!--                    DOMAIN ATTRIBUTE EXTENSIONS                -->
    <!-- ============================================================= -->
    
    <!ENTITY % base-attribute-extensions
            "%newfrombaseAtt-d-attribute; 
             %othernewfrombaseAtt-d-attribute;">
    
    <!ENTITY % props-attribute-extensions
            "%newAtt-d-attribute; 
             %othernewAtt-d-attribute;">
    ```

-   **Topic nesting override**

    This section redefines the entity that controls topic nesting for each topic type that is integrated into the document-type shell.

    The parameter entity is named `*topictype*-info-types`.

    The definition usually is an "OR" list of the topic types that can be nested in the parent topic type. Use the literal root-element name, not the corresponding parameter entity. Topic nesting can be disallowed completely by specifying the `<no-topic-nesting>` element.

#     Example

    In the following example, the parameter entity specifies that `<concept>` can nest any number of `<concept>` or `<myTopicType>` topics, in any order:

    ```
    <!-- ============================================================= -->
    <!--                    TOPIC NESTING OVERRIDE                     -->
    <!-- ============================================================= -->
    
    <!ENTITY % concept-info-types "concept | myTopicType">
    ```

-   **Specializations attribute override**

    This section redefines the `included-domains` entity to include the text entity for each attribute domain that is included in the document-type shell. The redefinition sets the effective value of the `@specializations` attribute for the top-level document type that is configured by the document-type shell.

#     Example

    In the following example, parameter entities are included for the DITA conditional-processing attributes:

    ```
    <!-- ============================================================= -->
    <!--                 SPECIALIZATIONS ATTRIBUTE OVERRIDE            -->
    <!-- ============================================================= -->
    
    <!ENTITY included-domains
                              "&audienceAtt-d-att;
                               &deliveryTargetAtt-d-att;
                               &otherpropsAtt-d-att;
                               &platformAtt-d-att;
                               &productAtt-d-att;"
    >
    ```

-   **Element-type configuration integration**

    This section declares and references the parameter entity for each element-configuration module \(constraint and expansion\) that is integrated into the document-type shell.

    The parameter entity is named `*descriptionElement*-c-def`.

#     Example

    In the following example, the module that constrains the content model for the `<taskbody>` element is integrated into the document-type shell for strict task:

    ```
    <!ENTITY % strictTaskbody-c-def  
      PUBLIC "-//OASIS//ELEMENTS DITA 2.0 Strict Taskbody Constraint//EN" 
      "strictTaskbodyConstraint.mod"
    >%strictTaskbody-c-def;
    ```

-   **Topic \[or map\] element integration**

    This section declares and references an external parameter entity for the element declaration module \(`.mod` file\) for each structural module that is integrated into the document-type shell.

    The parameter entity is named `*structuralType*-type`.

    The structural modules are included in ancestry order, so that the parameter entities that are used in an ancestor module are available for use in specializations. When a structural module depends on elements from a vocabulary module that is not part of its ancestry, the module upon which the structural module has a dependency \(and any ancestor modules not already included\) need to be included before the module with a dependency.

#     Example

    In the following example, the structural modules that are required by the troubleshooting topic are integrated into the document-type shell:

    ```
    <!-- ============================================================= -->
    <!--                    TOPIC ELEMENT INTEGRATION                  -->
    <!-- ============================================================= -->
    
    <!ENTITY % topic-type
      PUBLIC "-//OASIS//ELEMENTS DITA 2.0 Topic//EN"
             "../../base/dtd/topic.mod"
    >%topic-type;
    
    <!ENTITY % task-type
      PUBLIC "-//OASIS//ELEMENTS DITA 2.0 Task//EN"
             "task.mod"
    >%task-type;
    
    <!ENTITY % troubleshooting-type
      PUBLIC "-//OASIS//ELEMENTS DITA 2.0 Troubleshooting//EN"
             "troubleshooting.mod"
    >%troubleshooting-type;
    ```

-   **Domain element integration**

    This section declares and references an external parameter entity for each element domain that is integrated into the document-type shell.

    The parameter entity is named `*domainName*-def`.

#     Example

    In the following example, the element-definition file for the highlighting domain is integrated into the document-type shell:

    ```
    <!-- ============================================================= -->
    <!--                    DOMAIN ELEMENT INTEGRATION                 -->
    <!-- ============================================================= -->
    
    <!ENTITY % hi-d-def PUBLIC
        "-//OASIS//ELEMENTS DITA 2.0 Highlight Domain//EN" 
        "highlightDomain.mod"
    >%hi-d-def;
    ```

    If a structural module depends on a domain, the domain module needs to be included before the structural module. This erases the boundary between the final two sections of the DTD-based document-type shell, but it is necessary to ensure that modules are embedded after their dependencies. Technically, the only solid requirement is that both domain and structural modules be declared after all other modules that they specialize from or depend on.


**Parent topic:**[DTD coding requirements](../../archSpec/base/dtd-requirements.md)

