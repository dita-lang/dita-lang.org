---
author: OASIS DITA Technical Committee
---

# RELAX NG: Coding requirements for structural modules

A structural vocabulary module defines a new topic or map type as a specialization of a topic or map type.

## Required topic and map element attributes

The topic or map element type references the `arch-atts` pattern, which defines the `@DITAArchVersion` attribute in the DITA architecture namespace and sets the attribute to the version of DITA. In addition, the topic or map element type references the `specializations-att` pattern, which pulls in a definition for the `@specializations` attribute.

example

For example, the following definition references the `arch-atts` and `specializations-att` patterns as part of the definition for the `<concept>` element.

```
<div>
  <a:documentation> LONG NAME: Concept </a:documentation>
  <!-- ... -->
  <define name="concept.attlist" combine="interleave">
    <ref name="concept.attributes"/>
    **&lt;ref name="arch-atts"/&gt;
    &lt;ref name="specializations-att"/&gt;**
  </define>
  <!-- ... -->
</div>

```

The `@DITAArchVersion` and `@specializations` attributes give processors a reliable way to check the DITA version and the attribute domains that are used.

## Controlling nesting in topic types

A structural module that defines a new topic type typically defines an `info-types` style pattern to specify a default for what topic types are permitted to nest. Document-type shells then can control how topics are allowed to nest by redefining the pattern.

The following rules apply when using a pattern to control topic nesting.

-   **Pattern name**

    The pattern name is the topic element name plus the suffix `-info-types`.

    exampleFor example, the info-types pattern for the concept topic type is `concept-info-types`.

-   **Pattern value**

    To set up default topic-nesting rules, set the pattern to the desired topic elements. The default topic nesting is used when a document-type shell does not set up different rules.

    example

    For example:

    ```
    <div>
      <a:documentation>INFO TYPES PATTERNS</a:documentation>
      <define name="mytopic-info-types">
        <ref name="subtopictype-01.element"/>
        <ref name="subtopictype-02.element"/>
      </define>
      <!-- ... -->
    </div>
    ```

    To disable topic nesting, specify the `<empty>` element.

    example

    For example:

    ```
    <define name="learningAssessment-info-types">
      <empty/>
    </define>
    ```

    The `info-types` pattern also can be used to refer to common nesting rules across the document-type shell.

    example

    For example:

    ```
    <div>
      <a:documentation>INFO TYPES PATTERNS</a:documentation>
      <define name="mytopic-info-types">
        <ref name="info-types"/>
      </define>
      <!-- ... -->
    </div>
    ```

-   **Content model of the root element**

    In the declaration of the root element of a topic type, the last position in the content model is the `*topictype*-info-types` pattern.

    example

    For example, the `<concept>` element places the pattern after `<related-links>`:

    ```
    <div>
      <a:documentation>LONG NAME: Concept</a:documentation>
      <define name="concept.content">
        <!-- ... -->
        <optional>
          <ref name="related-links"/>
        </optional>
        <zeroOrMore>
          <ref name="concept-info-types"/>
        </zeroOrMore>
      </define>
    </div>
    ```


In certain cases, you do not need to use the `info-types` pattern to control topic nesting:

-   If a topic type will never permit topic nesting, regardless of context, it can be defined without any pattern or any nested topics.
-   If a topic type will allow only specific nesting patterns, such as allowing only other topic types that are defined in the same module, it can nest those topics directly in the same way that other nested elements are defined.

**Parent topic:**[RELAX NG coding requirements](../../archSpec/base/relax-ng-requirements.md)

