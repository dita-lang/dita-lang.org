---
author: OASIS DITA Technical Committee
---

# RELAX NG: Coding requirements for element-domain modules

Element-domain modules declare an extension pattern for each element that is extended by the domain. These patterns are used when including the domain module in document-type shells.

-   **Pattern name**

    The name of the pattern is the abbreviation for the domain, followed by a hyphen \("-"\), and the name of the element that is extended.

#     Example

    For example, the name of the pattern for the highlighting domain that extends the `<ph>` element is `hi-d-ph`.

-   **Pattern definition**

    The pattern consists of a choice group that contains references to element-type name patterns. Each extension of the base element type is referenced.

#     Example

    The following code sample shows the pattern for the elements defined in the highlighting domain:

    ```
    <a:documentation>DOMAIN EXTENSION PATTERNS</a:documentation>
    
    <define name="hi-d-ph">
      <choice>
        <ref name="b.element"/>
        <ref name="i.element"/>
        <ref name="line-through.element"/>
        <ref name="overline.element"/>
        <ref name="sup.element"/>
        <ref name="sub.element"/>
        <ref name="tt.element"/>
        <ref name="u.element"/>
      </choice>
    </define>
    
    ```

-   **Extension pattern**

    For each element type that is extended by the element-domain module, the module extends the element-type pattern with a `@combine` value of choice that contains a reference to the domain pattern.

#     Example

    For example, the following pattern adds the highlight domain specializations of the `<ph>` element to the content model of the `<ph>` element:

    ```
    <define name="ph" combine="choice">
      <ref name="hi-d-ph"/>
    </define>
    ```

    Because the pattern uses a `@combine` value of choice, the effect is that the domain-provided elements automatically are added to the effective content model of the extended element in any grammar that includes the domain module.


**Parent topic:**[RELAX NG coding requirements](../../archSpec/base/relax-ng-requirements.md)

