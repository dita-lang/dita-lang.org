---
author: OASIS DITA Technical Committee
---

# RELAX NG: Coding requirements for attribute-domain modules

An attribute-domain vocabulary module declares a new attribute specialized from either the `@props` or `@base` attribute.

The name of an attribute domain is the name of the attribute plus Att. For example, for the attribute named `@deliveryTarget`, the attribute-domain name is "deliveryTargetAtt". The attribute-domain name is used to construct pattern names for the domain.

An attribute-domain module consists of a single file, which has three sections:

-   **Specializations attribute contribution**

    The contribution to the `@specializations` attribute is documented in the module. The value is constructed according to the rules found in [The specializations attribute rules and syntax](specialization-specializations-attribute.md).

    The OASIS grammar files use a `<domainsContribution>` element to document the contribution; this element is used to help enable generation of DTD and XSD grammar files. An XML comment or `<a:documentation>` element also can be used.

-   **Attribute declaration pattern**

    The specialized attribute is declared in a pattern named `*domainName*-d-attribute`. The attribute is defined as optional.

    example

    For example, the following code samples shows the the `@audience` specialization of `@props`:

    ```
    <define name="audienceAtt-d-attribute">
      <optional>
        <attribute name="audience" dita:since="2.0">
          <a:documentation>Specifies the audience to which an element applies.</a:documentation>
        </attribute>
      </optional>    
    </define>
    ```

-   **Attribute extension pattern**

    The attribute extension pattern extends either the `@props` or `@base` attribute-list pattern to include the attribute specialization.

    -   **Specializations of `@props`**

        The pattern is named `props-attribute-extensions`. The pattern specifies a `@combine` value of interleave, and the content of the pattern is a reference to the specialized-attribute declaration pattern.

        example

        For example:

        ```
        <define name="props-attribute-extensions" combine="interleave">
          <ref name="audienceAtt-d-attribute"/>
        </define>
        ```

    -   **Specializations of `@base`**

        The pattern is named `base-attribute-extensions`. The pattern specifies a `@combine` value of interleave, and the content of the pattern is a reference to the specialized-attribute declaration pattern.

        example

        For example:

        ```
        <define name="base-attribute-extensions" combine="interleave">
            <ref name="myBaseSpecializationAtt-d-attribute"/>
        </define>
        ```


**Parent topic:**[RELAX NG coding requirements](../../archSpec/base/relax-ng-requirements.md)

