---
author: OASIS DITA Technical Committee
---

# Aggregated RFC-2119 statements

This appendix contains all the normative statements from the DITA 2.0 specification. They are aggregated here for convenience in this non-normative appendix.

## Aggregated error statements

-   **[DITAERR-0010](../archSpec/base/impose-topicref-role.md#d4692t186)**

    Processors MAY choose to treat this as an error, issue a warning, or simply assign new roles to the problematic elements.

-   **[DITAERR-0020](../archSpec/base/map-convenience-elements.md#d3817t20)**

    The same functions can be accomplished with `<topicref>`, but the elements are designed to make authoring easier and less error-prone.

-   **[DITAERR-0030](../archSpec/base/thehrefattribute.md#d3630t80)**

    If the value of the `@href` attribute is not a valid URI reference, an implementation MAY generate an error message.

-   **[DITAERR-0040](../archSpec/base/thehrefattribute.md#d3630t86)**

    It MAY also recover from this error condition by attempting to convert the value to a valid URI reference.

-   **[DITAERR-0050](../archSpec/base/thetypeattribute.md#d4185t131)**

    Applications MAY recover from this error condition by using the correct value detected.

-   **[DITAERR-0060](../archSpec/base/processing-key-references-general.md#d4091t126)**

    If it is an error for the element to be empty, an implementation MAY give an error message; it also MAY recover from this error condition by leaving the key reference element empty.

-   **[DITAERR-0070](../archSpec/base/theconactionattribute.md#d3141e215)**

    It is an error for two source topics to replace the same element.

-   **[DITAERR-0080](../archSpec/base/theconactionattribute.md#d3141e406)**

    The conref push function does not provide the ability to push a range of elements, so it is an error to specify the `@conrefend` attribute together with the `@conaction` attribute.

-   **[DITAERR-0090](../archSpec/base/conref-processing.md#d4149e102)**

    When encountering the following error conditions, an implementation can optionally issue an error message.

-   **[DITAERR-0100](../archSpec/base/branch-filtering-handling-conflicts.md#d3463e12)**

    It is an error if `<ditavalref>`-driven branch cloning results in multiple copies of a topic that have the same resolved name.

-   **[DITAERR-0110](../archSpec/base/branch-filtering-handling-conflicts.md#d3463t16)**

    Processors SHOULD report an error in such cases.

-   **[DITAERR-0120](../archSpec/base/branch-filtering-handling-conflicts.md#d3463t25)**

    exampleFor example, a topic might appear in both the admin and novice copies of a branch but not contain content that is tailored to either audience; in that case, the filtered copies would match. A processor MAY consider this form of equivalence when determining if two references to the same resource should be reported as an error.

-   **[DITAERR-0130](../archSpec/base/specialization-modularization.md#d2920t45)**

    This saves considerable time and effort, reduces error, enforces consistency, and makes interoperability possible.

-   **[DITAERR-0140](../archSpec/base/generalization-processor-expectations.md#d4347e101)**

    It is an error if the root element matches a specified source but its `@class` attribute does not contain the target.

-   **[DITAERR-0150](../archSpec/base/generalization-processor-expectations.md#d4347e157)**

    It is an error if the last value in the `@class` attribute matches a specified source but the previous values do not include the target.

-   **[DITAERR-0160](../archSpec/base/generalization-attributes.md#d2686e136)**

    This is an error condition, since it means the document has been only partially generalized, or that the document has been generalized and then edited using a specialized document type.

-   **[DITAERR-0170](../langRef/base/example.md#d3572e54)**

    Processors SHOULD treat the presence of more than one `<title>` element in a `<example>` element as an error.

-   **[DITAERR-0180](../langRef/base/section.md#d3753e87)**

    Processors SHOULD treat the presence of more than one `<title>` element in a `<section>` element as an error.

-   **[DITAERR-0190](../langRef/base/defaultSubject.md#d3734t64)**

    The spec says that if your scheme tells you "a" and "b" are the only valid values in an attribute, then specifying "x" and "y" are both in error, and processors / applications can treat that as an error.

-   **[DITAERR-0200](../langRef/base/defaultSubject.md#d3734t64)**

    If you set up that scheme but your grammar files only allow "x" and "y", then you've set up a scheme that means every usage of that element is automatically an error condition.

-   **[DITAERR-0210](../langRef/base/hazardsymbol.md#d4201e368)**

    It is an error if the value of this attribute is not an unsigned integer.

-   **[DITAERR-0220](../langRef/base/hazardsymbol.md#d4201t369)**

    In this case, the implementation might give an error message and might recover by ignoring this attribute.

-   **[DITAERR-0230](../langRef/base/topicgroup.md#d3283e110)**

    When a map that contains a `<topicgroup>` element with a navigation title is used to generate publication output, processors MUST ignore the navigation title and MAY issue an error message.

-   **[DITAERR-0240](../langRef/base/sort-as.md#d4325e242)**

    It is an error if there is more than one `<sort-as>` child for a given `<indexterm>` element.

-   **[DITAERR-0250](../langRef/ditaval/prop.md#d4536e258)**

    The following markup in a DITAVAL document is an error condition:

    -   More than one `<prop>` element with no `@att` attribute
    -   More than one `<prop>` element with the same `@att` attribute and no value
    -   More than one `<prop>` element with the same `@att` attribute and same `@value`
    Processors MAY provide an error or warning message for these error conditions.

-   **[DITAERR-0260](../langRef/ditaval/revprop.md#d3133e176)**

    It is an error to include more than one `<revprop>` element with the same `@val` attribute.

-   **[DITAERR-0270](../langRef/ditaval/revprop.md#d3133t183)**

    Recovery from this error is implementation dependent.

-   **[DITAERR-0280](../langRef/ditaval/revprop.md#d3133t183)**

    In such cases processors MAY provide an error or warning message.

-   **[DITAERR-0290](../langRef/attributes/attribute-groups.md#d3600e2040)**

    It is an error to use `parse="xml"` anywhere other than within `<foreign>` or a specialization thereof.

-   **[DITAERR-0300](../langRef/attributes/commonAttributes.md#d3125e1729)**

    It is an error to use `parse="xml"` anywhere other than within `<foreign>` or a specialization thereof.

-   **[DITAERR-0310](information-about-migrating-to-dita-2-0.md#d4138t735)**

    If a specialized element defined this attribute and also uses the universal attribute group, that extra definition is now redundant and will result in a parsing error against the DITA 2.x grammar files.

-   **[DITAERR-0320](interoperability-considerations.md#d2840t37)**

    If content referencing is resolved *after* filtering, the referenced element is filtered out and the content reference cannot be resolved, typically generating an error.

-   **[DITAERR-0330](interoperability-considerations.md#d2840t53)**

    The difference in these two cases is that in the first case the content reference cannot be resolved, resulting in a processing error and a potentially nonsensical element if the referencing element has required subelements \(for example, a content reference from a topic to another topic, where the referencing topic must have a title subelement\), but in the second case the element is filtered completely out.


## Implementation dependent statements

-   **[DITAIMP-0010](../archSpec/base/impose-topicref-role.md#d4692t186)**

    The result is implementation specific.

-   **[DITAIMP-0020](../archSpec/base/binding-controlled-values-to-attribute.md#d3785t90)**

    Recovery from validation errors is implementation specific.

-   **[DITAIMP-0030](../archSpec/base/merging-of-cascading-attributes.md#d2836e87)**

    Implementers MAY define their own custom, implementation-specific tokens for the `@cascade` attribute.

-   **[DITAIMP-0040](../archSpec/base/merging-of-cascading-attributes.md#d2836t94)**

    To avoid name conflicts between implementations or with future additions to the standard, implementation-specific tokens SHOULD consist of a prefix that gives the name or an abbreviation for the implementation followed by a colon followed by the token or method name.

-   **[DITAIMP-0050](../archSpec/base/merging-of-cascading-attributes.md#d2836e111)**

    The predefined values for the `@cascade` attribute MUST precede any implementation-specific tokens, for example, `cascade="merge appToken:audience"`.

-   **[DITAIMP-0060](../archSpec/base/chunk-attribute-other-tokens.md#d4237t12)**

    These tokens are implementation dependent and might not be supported by other applications.

-   **[DITAIMP-0070](../archSpec/base/sort-as-processing.md#d3761e79)**

    The details of sorting and grouping are implementation specific.

-   **[DITAIMP-0080](../langRef/base/fn.md#d3431e179)**

    However, the details of footnote processing and formatting are implementation dependent.

-   **[DITAIMP-0090](../langRef/base/image.md#d3421t618)**

    The available height is implementation dependent, but if feasible, it is suggested to be the page or table cell height or some other reasonable value.

-   **[DITAIMP-0100](../langRef/base/hazardsymbol.md#d4201t407)**

    The available height is implementation dependent, but if feasible, it is suggested to be the page \(or table cell\) height or some other reasonable value.

-   **[DITAIMP-0110](../langRef/ditaval/prop.md#d4536t444)**

    How the attribute is preserved and used is implementation dependent.

-   **[DITAIMP-0120](../langRef/ditaval/revprop.md#d3133t183)**

    Recovery from this error is implementation dependent.

-   **[DITAIMP-0130](../langRef/ditaval/revprop.md#d3133t327)**

    How the attribute is preserved and used is implementation dependent.

-   **[DITAIMP-0140](../langRef/attributes/attribute-groups.md#d3600e247)**

    Processors can also define custom, implementation-specific tokens for this attribute.

-   **[DITAIMP-0150](../langRef/attributes/attribute-groups.md#d3600e312)**

    Processors can also define custom, implementation-specific tokens for this attribute.

-   **[DITAIMP-0160](../langRef/attributes/attribute-groups.md#d3600t1993)**

    The necessity and uses of `@encoding` for non-standard values of `@parse` are implementation-dependent.

-   **[DITAIMP-0170](../langRef/attributes/commonAttributes.md#d3125e503)**

    Processors can also define custom, implementation-specific tokens for this attribute.

-   **[DITAIMP-0180](../langRef/attributes/commonAttributes.md#d3125e648)**

    Processors can also define custom, implementation-specific tokens for this attribute.

-   **[DITAIMP-0190](../langRef/attributes/commonAttributes.md#d3125t983)**

    The necessity and uses of `@encoding` for non-standard values of `@parse` are implementation-dependent.


## Aggregated RFC-2119 statements

-   **[DITAREQ-0010](../archSpec/base/basic-dita-terminology.md#d3688e22)**

    A DITA document MUST have as its root element one of the following elements:

    -   `<map>` or a specialization of the `<map>` element
    -   `<topic>` or a specialization of the `<topic>` element
    -   `<dita>`, which cannot be specialized, but which allows for a DITA document with multiple root-level sibling topics
-   **[DITAREQ-0020](../archSpec/base/fileext.md#d3325e30)**

    Files that contain DITA content SHOULD use the following file extensions:

    -   **DITA topics**

        `*.dita` \(preferred\)

        `*.xml`

    -   **DITA maps**

        `*.ditamap`

    -   **Conditional processing profiles**

        `*.ditaval`

-   **[DITAREQ-0030](../archSpec/base/processing-expectations-regarding-the-xml-lang-attribute.md#d3568e60)**

    If the root element of a map or a top-level topic has no value for the `@xml:lang` attribute, a processor SHOULD assume a default value.

-   **[DITAREQ-0040](../archSpec/base/processing-expectations-regarding-the-xml-lang-attribute.md#d3568e72)**

    When a `@conref` or `@conkeyref` attribute is used to include content from one element into another, the processor MUST use the effective value of the `@xml:lang` attribute from the referenced element.

-   **[DITAREQ-0050](../archSpec/base/processing-expectations-regarding-the-xml-lang-attribute.md#d3568e100)**

    Processors SHOULD render each element in a way that is appropriate for its language as identified by the `@xml:lang` attribute.

-   **[DITAREQ-0060](../archSpec/base/processing-expectations-about-the-unicode-bidirectional-algorithm.md#d2776e31)**

    DITA processors SHOULD fully support the Unicode Bidirectional Algorithm.

-   **[DITAREQ-0070](../archSpec/base/impose-topicref-role.md#d4692t186)**

    Processors MAY choose to treat this as an error, issue a warning, or simply assign new roles to the problematic elements.

-   **[DITAREQ-0080](../archSpec/base/subject-scheme-maps-and-usage.md#d2876t28)**

    Processors also MAY provide parameters by which subject scheme maps are referenced.

-   **[DITAREQ-0090](../archSpec/base/controlled-values-for-attributes.md#d4087e109)**

    Authoring tools SHOULD use these lists of controlled values to provide lists from which authors can select values when they specify attribute values.

-   **[DITAREQ-0100](../archSpec/base/controlled-values-for-attributes.md#d4087e115)**

    Authoring tools MAY give an organization a list of readable labels, a hierarchy of values to simplify selection, and a shared definition of the value.

-   **[DITAREQ-0110](../archSpec/base/controlled-values-for-attributes.md#d4087e121)**

    Authoring tools MAY support accessing and displaying the content of the subject definition resource in order to provide users with a detailed explanation of the subject.

-   **[DITAREQ-0120](../archSpec/base/binding-controlled-values-to-attribute.md#d3785e86)**

    If an enumeration is bound, processors SHOULD validate attribute values against the controlled values that are defined in the subject scheme map.

-   **[DITAREQ-0130](../archSpec/base/processing-controlled-attribute-values.md#d2643e81)**

    Processors SHOULD be aware of the hierarchies of attribute values that are defined in subject scheme maps for purposes of filtering, flagging, or other metadata-based categorization.

-   **[DITAREQ-0140](../archSpec/base/processing-controlled-attribute-values.md#d2643e87)**

    Processors SHOULD validate that the values of attributes that are bound to controlled values contain only valid values from those sets.

-   **[DITAREQ-0150](../archSpec/base/processing-controlled-attribute-values.md#d2643e100)**

    Processors SHOULD check that all values listed for an attribute in a DITAVAL file are bound to the attribute by the subject scheme before filtering or flagging.

-   **[DITAREQ-0160](../archSpec/base/processing-controlled-attribute-values.md#d2643t104)**

    If a processor encounters values that are not included in the subject scheme, it SHOULD issue a warning.

-   **[DITAREQ-0170](../archSpec/base/processing-controlled-attribute-values.md#d2643e110)**

    Processors SHOULD apply the following algorithm when they apply filtering and flagging rules to attribute values that are defined as a hierarchy of controlled values and bound to an enumeration:

    1.  If an attribute specifies a value in the taxonomy, and a DITAVAL or other categorization tool is configured with that value, the rule matches.
    2.  Otherwise, if the parent value in the taxonomy has a rule, that matches.
    3.  Otherwise, continue up the chain in the taxonomy until a matching rule is found.
-   **[DITAREQ-0180](../archSpec/base/id.md#d3672e63)**

    Within a map document, the values of the `@id` attributes for all elements SHOULD be unique.

-   **[DITAREQ-0190](../archSpec/base/id.md#d3672t70)**

    When two elements within a map have the same value for the `@id` attribute, processors MUST resolve references to that ID to the first element with the given ID value in document order.

-   **[DITAREQ-0200](../archSpec/base/theformatattribute.md#d4337e277)**

    If the actual format of the referenced content differs from the effective value of the `@format` attribute, and a processor is capable of identifying such cases, it MAY recover gracefully and treat the content as its actual format.

-   **[DITAREQ-0210](../archSpec/base/theformatattribute.md#d4337t284)**

    The processor MAY also issue a message.

-   **[DITAREQ-0220](../archSpec/base/thehrefattribute.md#d3630e70)**

    The value of the `@href` attribute MUST be a valid URI reference \[[RFC 3986](http://www.ietf.org/rfc/rfc3986.txt)\].

-   **[DITAREQ-0230](../archSpec/base/thehrefattribute.md#d3630t80)**

    If the value of the `@href` attribute is not a valid URI reference, an implementation MAY generate an error message.

-   **[DITAREQ-0240](../archSpec/base/thehrefattribute.md#d3630t86)**

    It MAY also recover from this error condition by attempting to convert the value to a valid URI reference.

-   **[DITAREQ-0250](../archSpec/base/thescopeattribute.md#d2702t201)**

    Processors MUST always consider relative URIs as local by default.

-   **[DITAREQ-0260](../archSpec/base/thetypeattribute.md#d4185e124)**

    Applications MAY issue a warning when the specified or inherited `@type` attribute value does not match the target or a specialization ancestor of the target.

-   **[DITAREQ-0270](../archSpec/base/thetypeattribute.md#d4185t131)**

    Applications MAY recover from this error condition by using the correct value detected.

-   **[DITAREQ-0280](../archSpec/base/uri-based-addressing.md#d4083e39)**

    DITA processors MAY ignore queries on URI references to DITA resources.

-   **[DITAREQ-0290](../archSpec/base/processing-key-references-general.md#d4091e15)**

    If both `@keyref` and `@href` attributes are specified on an element, the `@href` value MUST be used as a fallback address when the key name is undefined.

-   **[DITAREQ-0300](../archSpec/base/processing-key-references-general.md#d4091t28)**

    If both `@conkeyref` and `@conref` attributes are specified on an element, the `@conref` value MUST be used as a fallback address when the key name is undefined.

-   **[DITAREQ-0310](../archSpec/base/processing-key-references-general.md#d4091t78)**

    Processors SHOULD perform conditional processing before determining the effective key definitions.

-   **[DITAREQ-0320](../archSpec/base/processing-key-references-general.md#d4091e92)**

    If a topic that contains key references is reused in multiple key scopes within a given root map such that its references resolve differently in each use context, processors MUST produce multiple copies of the source topic in resolved output for each distinct set of effective key definitions that are referenced by the topic.

-   **[DITAREQ-0330](../archSpec/base/processing-key-references-general.md#d4091t126)**

    If it is an error for the element to be empty, an implementation MAY give an error message; it also MAY recover from this error condition by leaving the key reference element empty.

-   **[DITAREQ-0340](../archSpec/base/processing-keyref-on-topicref.md#d3203t38)**

    Processors MAY impose reasonable limits on the number of intermediate key references that they will resolve.

-   **[DITAREQ-0350](../archSpec/base/processing-keyref-on-topicref.md#d3203t41)**

    Processors SHOULD support at least three levels of key references.

-   **[DITAREQ-0360](../archSpec/base/processing-keyref-for-text.md#d3065e137)**

    Processors MUST resolve variable text that is defined using keys by using the following sequence:

    1.  Effective text content is taken from the `<keytext>` element.
    2.  Effective text content is taken from the `<titlealt>` element with `@title-role` set to linking.
    3.  Effective text content is taken from the `<titlealt>` element with `@title-role` set to navigation.
    4.  Effective text content is taken from the `<titlealt>` element with `@title-role` set to a processor-recognized value.
    5.  Effective text content is taken from the title of the referenced document, if available.
    6.  Effective text content is determined by the processor.
-   **[DITAREQ-0370](../archSpec/base/processing-keyref-for-text.md#d3065e200)**

    When the effective content for a key reference element results in invalid elements, those elements SHOULD be generalized to produce a valid result.

-   **[DITAREQ-0380](../archSpec/base/index-ranges.md#d3612e182)**

    Processors that support index ranges SHOULD do the following:

    -   Match `@start` and `@end` attributes by a character-by-character comparison with all characters significant and no case folding occurring.
    -   Ignore `@start` and `@end` attributes if they occur on an `<indexterm>` element that has child `<indexterm>` elements.
    -   Handle an end-of-range `<indexterm>` element that is nested within one or more `<indexterm>` elements. The end-of-range `<indexterm>` element should have no content of its own; if it contains content, that content is ignored.

        **Draft comment:**Kristen J Eberlein   
        

        Can we improve the phrasing of the two above list items? Robert and I think that they were authored in order to communicate that if you want a range to be specified for a secondary entry, it has to be done like this:

        ```
        <indexterm>Potato
          <indexterm start="yellow">Yellow potatoes</indexterm>
        </indexterm>
        
        <indexterm>Potato
          <indexterm end="yellow"/>
        <indexterm>
        ```

        **Draft comment:**robander   
        TO RESOLVE 12 May 2026: Try to come up with a simple wording tweak to describe it based on our understanding from long ago

    -   When index ranges with the same identifier overlap, the effective range is determined by matching the earliest start-of-range element from the set of overlapping ranges with the latest end-of-range element from the set of overlapping ranges.
    -   An unmatched start-of-range element is treated as a simple `<indexterm>`element.
    -   Ignore unmatched end-of-range `<indexterm>` elements.
-   **[DITAREQ-0390](../archSpec/base/theconrefendattribute.md#d3041e61)**

    The start and end elements of a range MUST be of the same type as the referencing element or generalizable to the referencing element.

-   **[DITAREQ-0400](../archSpec/base/theconrefendattribute.md#d3041e67)**

    The start and end elements in a range MUST share the same parent, and the start element MUST precede the end element in document order.

-   **[DITAREQ-0410](../archSpec/base/theconrefendattribute.md#d3041e76)**

    The parent of the referencing element MUST be the same type as the parent of the referenced range or generalizable to the parent of the referencing element.

-   **[DITAREQ-0420](../archSpec/base/theconactionattribute.md#d3141t216)**

    Applications MAY warn users if more than one element attempts to replace a single target.

-   **[DITAREQ-0430](../archSpec/base/conref-processing.md#d4149e66)**

    A conref processor SHOULD NOT permit resolution of a reuse relationship that could be rendered invalid under the rules of either the reused or reusing content.

-   **[DITAREQ-0440](../archSpec/base/conref-processing.md#d4149e72)**

    When resolving `@conkeyref` attributes, processors SHOULD issue a warning when a `@conkeyref` reference cannot be resolved and there is no `@conref` attribute to use as a fallback.

-   **[DITAREQ-0450](../archSpec/base/conref-processing.md#d4149t85)**

    Processors MAY issue a warning when a `@conkeyref` cannot be resolved to an element and a specified `@conref` is used as a fallback.

-   **[DITAREQ-0460](../archSpec/base/conref-attributes-specified-on-elements.md#d3857e77)**

    If the final resolved element \(after the complete resolution of any conref chain\) has an attribute with the "-dita-use-conref-target" value, that element MUST be treated as equivalent to having that attribute unspecified.

-   **[DITAREQ-0470](../archSpec/base/conref-attributes-specified-on-elements.md#d3857e97)**

    If the referenced element has a content referencing attribute specified, the above rules MUST be applied recursively with the resolved element from one referencing/referenced combination becoming one of the two elements participating in the next referencing/referenced combination.

-   **[DITAREQ-0480](../archSpec/base/handling-xref-and-conref-within-topics.md#d3865e88)**

    When the address is a direct URI reference of any form other than a same-topic fragment identifier, processors MUST resolve it relative to the source document that contains the original URI reference.

-   **[DITAREQ-0490](../archSpec/base/handling-xref-and-conref-within-topics.md#d3865e100)**

    When the address is a same-topic fragment identifier, processors MUST resolve it relative to the location of the content reference \(referencing context\).

-   **[DITAREQ-0500](../archSpec/base/handling-xref-and-conref-within-topics.md#d3865e112)**

    When the address is a key reference, processors MUST resolve it relative to the location of the content reference \(referencing context\).

-   **[DITAREQ-0510](../archSpec/base/conditionalprocessingexpectations.md#d4181e10)**

    Processors SHOULD be able to perform filtering and flagging using the following attributes: `@props`, `@audience`, `@deliveryTarget`, `@platform`, `@product`, and `@otherprops`.

-   **[DITAREQ-0520](../archSpec/base/conditionalprocessingexpectations.md#d4181e35)**

    The `@props` attribute can be specialized to create new attributes, and processors SHOULD be able to perform conditional processing on specializations of `@props`.

-   **[DITAREQ-0530](../archSpec/base/processing-cascading-attributes-in-a-map.md#d3809e12)**

    When determining the effective value of an attribute, processors MUST evaluate each applicable attribute for each map element in the following order:

-   **[DITAREQ-0540](../archSpec/base/processing-cascading-attributes-in-a-map.md#d3809e42)**

    For multi-value attributes, cascading and merging behavior MUST follow the rules of `@cascade`.

-   **[DITAREQ-0550](../archSpec/base/processing-cascading-attributes-in-a-map.md#d3809t61)**

    Values established only by processing-supplied defaults in step 6 MUST NOT cascade to referenced maps.

-   **[DITAREQ-0560](../archSpec/base/merging-of-cascading-attributes.md#d2836e75)**

    If no value is set for the `@cascade` attribute and no value cascades from a containing element, processors SHOULD assume a default of merge.

-   **[DITAREQ-0570](../archSpec/base/merging-of-cascading-attributes.md#d2836e87)**

    Implementers MAY define their own custom, implementation-specific tokens for the `@cascade` attribute.

-   **[DITAREQ-0580](../archSpec/base/merging-of-cascading-attributes.md#d2836t94)**

    To avoid name conflicts between implementations or with future additions to the standard, implementation-specific tokens SHOULD consist of a prefix that gives the name or an abbreviation for the implementation followed by a colon followed by the token or method name.

-   **[DITAREQ-0590](../archSpec/base/merging-of-cascading-attributes.md#d2836e111)**

    The predefined values for the `@cascade` attribute MUST precede any implementation-specific tokens, for example, `cascade="merge appToken:audience"`.

-   **[DITAREQ-0600](../archSpec/base/chunk-attribute-overview.md#d4653e154)**

    When the source document organization has no effect on published output, such as when producing a single PDF or EPUB, processors MAY ignore the `@chunk` attribute.

-   **[DITAREQ-0610](../archSpec/base/chunk-attribute-overview.md#d4653e163)**

    When the `@chunk` attribute results in more or fewer documents based on the `combine` or `split` tokens, the hierarchy of topics within the resulting map and topic organization SHOULD match the hierarchy in the original topics and maps.

-   **[DITAREQ-0620](../archSpec/base/chunk-attribute-overview.md#d4653e178)**

    When the `@chunk` attribute results in more or fewer documents, processors MAY create their own naming schemes for those reorganized documents.

-   **[DITAREQ-0630](../archSpec/base/chunk-attribute-overview.md#d4653t197)**

    Processors MAY apply equivalent processing to non-DITA documents.

-   **[DITAREQ-0640](../archSpec/base/branch-filtering-overview.md#d4426e52)**

    In addition to filtering, applications MAY support flagging at the branch level based on the referenced DITAVAL documents.

-   **[DITAREQ-0650](../archSpec/base/branch-filtering-handling-conflicts.md#d3463t16)**

    Processors SHOULD report an error in such cases.

-   **[DITAREQ-0660](../archSpec/base/branch-filtering-handling-conflicts.md#d3463t19)**

    Processors MAY recover by using an alternate naming scheme for the conflicting topics.

-   **[DITAREQ-0670](../archSpec/base/branch-filtering-handling-conflicts.md#d3463t25)**

    exampleFor example, a topic might appear in both the admin and novice copies of a branch but not contain content that is tailored to either audience; in that case, the filtered copies would match. A processor MAY consider this form of equivalence when determining if two references to the same resource should be reported as an error.

-   **[DITAREQ-0680](../archSpec/base/branch-filtering-implications-of-processing-order.md#d4758e10)**

    The full effects of the branch filtering process MUST be calculated by processors before they construct the effective map and key scope structure.

-   **[DITAREQ-0690](../archSpec/base/sort-as-processing.md#d3761e64)**

    Processors that perform sorting SHOULD explicitly document how the base sort phrase is determined for a given element.

-   **[DITAREQ-0700](../archSpec/base/sort-as-processing.md#d3761e87)**

    When a `<sort-as>` element is specified, processors that sort the containing element MUST construct the effective sort phrase by prepending the content of the `<sort-as>` element to the base sort phrase.

-   **[DITAREQ-0710](../archSpec/base/rules-document-type-shells.md#d2947e50)**

    While the DITA specification only defines coding requirements for DTD and RELAX NG, conforming DITA documents MAY use other document-type constraint languages, such as XSD or Schematron.

-   **[DITAREQ-0720](../archSpec/base/rules-document-type-shells.md#d2947e72)**

    With two exceptions, a document-type shell MUST NOT directly define element or attribute types; it only includes vocabulary and element-configuration modules \(constraint and expansion\).

-   **[DITAREQ-0730](../archSpec/base/rules-document-type-shells.md#d2947e104)**

    Document-type shells that are not provided by OASIS MUST have a unique public identifier, if public identifiers are used.

-   **[DITAREQ-0740](../archSpec/base/rules-document-type-shells.md#d2947e110)**

    Document-type shells that are not provided by OASIS MUST NOT indicate OASIS as the owner.

-   **[DITAREQ-0750](../archSpec/base/rules-document-type-shells.md#d2947t114)**

    The public identifier or URN for such document-type shells SHOULD reflect the owner or creator of the document-type shell.

-   **[DITAREQ-0760](../archSpec/base/specialization-vocabulary-modules.md#d3081e126)**

    Structural modules based on topic MAY define additional topic types that are then allowed to occur as subordinate topics within the top-level topic.

-   **[DITAREQ-0770](../archSpec/base/specialization-vocabulary-modules.md#d3081e139)**

    Domain elements intended for use in topics MUST ultimately be specialized from elements that are defined in the topic module.

-   **[DITAREQ-0780](../archSpec/base/specialization-vocabulary-modules.md#d3081t143)**

    Domain elements intended for use in maps MUST ultimately be specialized from elements defined by or used in the map module.

-   **[DITAREQ-0790](../archSpec/base/specialization-class-attribute.md#d2973e126)**

    Every DITA element \(except the `<dita>` element that is used as the root of a ditabase document\) MUST declare a `@class` attribute.

-   **[DITAREQ-0800](../archSpec/base/specialization-class-attribute.md#d2973e138)**

    When the `@class` attribute is declared in an XML grammar, it MUST be declared with a default value.

-   **[DITAREQ-0810](../archSpec/base/specialization-class-attribute.md#d2973t145)**

    In order to support generalization round-tripping \(generalizing specialized content into a generic form and then returning it to the specialized form\) the default value MUST NOT be fixed.

-   **[DITAREQ-0820](../archSpec/base/specialization-class-attribute.md#d2973e150)**

    A vocabulary module MUST NOT change the `@class` attribute for elements that it does not specialize, but simply reuses by reference from more generic levels.

-   **[DITAREQ-0830](../archSpec/base/specialization-class-attribute.md#d2973e159)**

    Authors SHOULD NOT modify the `@class` attribute.

-   **[DITAREQ-0840](../archSpec/base/specialization-specializations-attribute.md#d4704e70)**

    Each specialization of the `@props` and `@base` attributes MUST provide a token for use by the `@specializations` attribute.

-   **[DITAREQ-0850](../archSpec/base/generalization-overview.md#d3447e75)**

    When generalizing for round-tripping, the `@class` attribute and `@specializations` attribute SHOULD retain the original specialized values in the generalized instance document.

-   **[DITAREQ-0860](../archSpec/base/generalization-processor-expectations.md#d4347e35)**

    A generalization processor SHOULD be able to handle cases where it is given:

    -   Only source modules for generalization \(in which case the designated source types are generalized to topic or map\)
    -   Only target modules for generalization \(in which case all descendants of each target are generalized to that target\)
    -   Both \(in which case only the specified descendants of each target are generalized to that target\)
-   **[DITAREQ-0870](../archSpec/base/generalization-processor-expectations.md#d4347e168)**

    When renaming elements during round-trip generalization, the generalization processor SHOULD preserve the values of all attributes.

-   **[DITAREQ-0880](../archSpec/base/generalization-processor-expectations.md#d4347t172)**

    When renaming elements during one-way or migration generalization, the process SHOULD preserve the values of all attributes except the `@class` attribute, which is supplied by the target document type.

-   **[DITAREQ-0890](../archSpec/base/generalization-attributes.md#d2686e44)**

    Specialization-aware processors MUST process both the specialized and generalized forms of an attribute as equivalent in their values.

-   **[DITAREQ-0900](../archSpec/base/generalization-attributes.md#d2686e114)**

    A single element MUST NOT contain both generalized and specialized values for the same attribute.

-   **[DITAREQ-0910](../archSpec/base/generalization-w-cross-specialization-dependencies.md#d2804e40)**

    When possible, generalizing processes SHOULD detect invalid generalization target combinations and report them as errors.

-   **[DITAREQ-0920](../langRef/base/shortdesc.md#d4371e100)**

    Processors SHOULD render the content of the `<shortdesc>` element as the initial paragraph of the topic.

-   **[DITAREQ-0930](../langRef/base/shortdesc.md#d4371e111)**

    When processors generate link previews that are based on the map context, they SHOULD use the content of the `<shortdesc>` that is located in the map rather than the `<shortdesc>` that is located in the DITA topic.

-   **[DITAREQ-0940](../langRef/base/shortdesc.md#d4371t121)**

    However, when processors render the topic itself, they SHOULD use the content of the `<shortdesc>` element that is located in the DITA topic.

-   **[DITAREQ-0950](../langRef/base/titlealt.md#d4520t172)**

    Processors SHOULD support the following tokens for the `@title-role` attribute:

    -   **`linking`**

        Specifies that the content of the `<titlealt>` element contains the title for use in references to the resources generated from DITA map structures, such as hierarchical parent/child/sibling links and links generated from relationship tables. In addition, this is the fallback alternative title for `navigation` and `search` roles. Custom title roles meant for use in link generation should also use this as a fallback.

    -   **`navigation`**

        Specifies that the content of the `<titlealt>` element contains the title for use in tables of content and other navigation aids. In some cases, when processing a `<topicref>` that has no `@href`, this is also used as the title of the generated topic, if applicable. If not present, this role is fulfilled by the `linking` role.

    -   **`search`**

        Specifies that the content of the `<titlealt>` element contains a title for use in search results for systems that support content search. If not present, this role is fulfilled by the `linking` role.

    -   **`subtitle`**

        Specifies that the content of the `<titlealt>` element contains a subtitle for the document.

    -   **`hint`**

        Specifies that the content of the `<titlealt>` element contains a hint about the referenced resource. This is intended for the benefit of map authors; it does not have an effect on processing or output.

    -   **-dita-use-conref-target**

        See [../../../archSpec/base/ditauseconreftarget.md](../../../archSpec/base/ditauseconreftarget.md) for more information.

-   **[DITAREQ-0960](../langRef/base/titlealt.md#d4520e278)**

    Alternative titles with the `@title-role` attribute set to tokens that are not recognized by the processor SHOULD be ignored and not appear in output.

-   **[DITAREQ-0970](../langRef/base/desc.md#d4762e102)**

    When used in conjunction with `<fig>` or `<table>` elements, processors SHOULD consider the content of `<desc>` elements to be part of the content flow.

-   **[DITAREQ-0980](../langRef/base/draft-comment.md#d2667e44)**

    By default, processors SHOULD NOT render `<draft-comment>` elements.

-   **[DITAREQ-0990](../langRef/base/draft-comment.md#d2667t51)**

    Processors SHOULD provide a mechanism that causes the content of the `<draft-comment>` element to be rendered in draft output only.

-   **[DITAREQ-1000](../langRef/base/example.md#d3572e54)**

    Processors SHOULD treat the presence of more than one `<title>` element in a `<example>` element as an error.

-   **[DITAREQ-1010](../langRef/base/image.md#d3421e62)**

    Processors SHOULD scale the object when values are provided for the `@height` and `@width` attributes.

-   **[DITAREQ-1020](../langRef/base/image.md#d3421e75)**

    If a height value is specified and no width value is specified, processors SHOULD scale the width by the same factor as the height.

-   **[DITAREQ-1030](../langRef/base/image.md#d3421e81)**

    If a width value is specified and no height value is specified, processors SHOULD scale the height by the same factor as the width.

-   **[DITAREQ-1040](../langRef/base/image.md#d3421e87)**

    If both a height value and width value are specified, implementations MAY ignore one of the two values when they are unable to scale to each direction using different factors.

-   **[DITAREQ-1050](../langRef/base/include.md#d4684e139)**

    Processors SHOULD support the [`@parse`](../../attributes/commonAttributes.md#attr-parse) values text and xml.

-   **[DITAREQ-1060](../langRef/base/include.md#d4684e155)**

    Processors SHOULD detect the encoding of the referenced document based on the rules described for the [`@encoding`](../../attributes/commonAttributes.md#attr-encoding) attribute.

-   **[DITAREQ-1070](../langRef/base/lines.md#d3443e33)**

    Processors SHOULD preserve the line breaks and spaces that are present in the content of a `<lines>` element.

-   **[DITAREQ-1080](../langRef/base/note.md#d4259e69)**

    Processors SHOULD render a label for notes.

-   **[DITAREQ-1090](../langRef/base/object.md#d3337e74)**

    Processors SHOULD scale the object when values are provided for the `@height` and `@width` attributes.

-   **[DITAREQ-1100](../langRef/base/object.md#d3337e87)**

    If a height value is specified and no width value is specified, processors SHOULD scale the width by the same factor as the height.

-   **[DITAREQ-1110](../langRef/base/object.md#d3337e93)**

    If a width value is specified and no height value is specified, processors SHOULD scale the height by the same factor as the width.

-   **[DITAREQ-1120](../langRef/base/object.md#d3337e99)**

    If both a height value and width value are specified, implementations MAY ignore one of the two values when they are unable to scale to each direction using different factors.

-   **[DITAREQ-1130](../langRef/base/object.md#d3337e106)**

    When an object cannot be rendered in a meaningful way, processors SHOULD present the contents of the `<fallback>` element, if it is present.

-   **[DITAREQ-1140](../langRef/base/pre.md#d4490e67)**

    Processors SHOULD preserve the line breaks and spaces that are present in the content of a `<pre>` element.

-   **[DITAREQ-1150](../langRef/base/section.md#d3753e87)**

    Processors SHOULD treat the presence of more than one `<title>` element in a `<section>` element as an error.

-   **[DITAREQ-1160](../langRef/base/audio.md#d3765e70)**

    When an audio resource cannot be rendered in a meaningful way, processors SHOULD present the contents of the `<fallback>` element, if it is present.

-   **[DITAREQ-1170](../langRef/base/video.md#d3881e73)**

    Processors SHOULD scale the video resource when values are provided for the `@height` and `@width` attributes.

-   **[DITAREQ-1180](../langRef/base/video.md#d3881e86)**

    If a height value is specified and no width value is specified, processors SHOULD scale the width by the same factor as the height.

-   **[DITAREQ-1190](../langRef/base/video.md#d3881e92)**

    If a width value is specified and no height value is specified, processors SHOULD scale the height by the same factor as the width.

-   **[DITAREQ-1200](../langRef/base/video.md#d3881e98)**

    If both a height value and width value are specified, implementations MAY ignore one of the two values when they are unable to scale to each direction using different factors.

-   **[DITAREQ-1210](../langRef/base/video.md#d3881e105)**

    When a video resource cannot be rendered in a meaningful way, processors SHOULD render the contents of the `<fallback>` element, if it is present.

-   **[DITAREQ-1220](../langRef/base/index-see.md#d4305e51)**

    Processors SHOULD ignore an `<index-see>` element if its parent `<indexterm>` element contains any `<indexterm>` children.

-   **[DITAREQ-1230](../langRef/base/index-see-also.md#d4446e59)**

    Processors SHOULD ignore an `<index-see-also>` element if its parent `<indexterm>` element contains any `<indexterm>` children.

-   **[DITAREQ-1240](../langRef/base/resourceid.md#d4720e126)**

    When `@appid-role` is set to deliverable-anchor, and the `<resourceid>` applies to a deliverable, processors SHOULD use the `@appid` value when constructing a URI for the delivered resource.

-   **[DITAREQ-1250](../langRef/base/data.md#d3829e89)**

    By default, processors SHOULD treat a `<data>` element as unknown metadata.

-   **[DITAREQ-1260](../langRef/base/data.md#d3829t96)**

    The contents of the `<data>` element SHOULD NOT be rendered.

-   **[DITAREQ-1270](../langRef/base/data.md#d3829e104)**

    Processors that recognize a particular `<data>` element MAY make use of it to trigger specialized rendering.

-   **[DITAREQ-1280](../langRef/base/foreign.md#d4472t80)**

    If a processor cannot render the content, it MAY issue a warning.

-   **[DITAREQ-1290](../langRef/base/hazardsymbol.md#d4201e58)**

    Processors SHOULD scale the object when values are provided for the `@height` and `@width` attributes.

-   **[DITAREQ-1300](../langRef/base/hazardsymbol.md#d4201e71)**

    If a height value is specified and no width value is specified, processors SHOULD scale the width by the same factor as the height.

-   **[DITAREQ-1310](../langRef/base/hazardsymbol.md#d4201e77)**

    If a width value is specified and no height value is specified, processors SHOULD scale the height by the same factor as the width.

-   **[DITAREQ-1320](../langRef/base/hazardsymbol.md#d4201e83)**

    If both a height value and width value are specified, implementations MAY ignore one of the two values when they are unable to scale to each direction using different factors.

-   **[DITAREQ-1330](../langRef/base/topicgroup.md#d3283e110)**

    When a map that contains a `<topicgroup>` element with a navigation title is used to generate publication output, processors MUST ignore the navigation title and MAY issue an error message.

-   **[DITAREQ-1340](../langRef/base/topichead.md#d4430e97)**

    Processors SHOULD generate a warning if a navigation title is not specified on a `<topichead>` element.

-   **[DITAREQ-1350](../langRef/base/sort-as.md#d4325e203)**

    Processors SHOULD expect to encounter `<sort-as>` elements in the above locations.

-   **[DITAREQ-1360](../langRef/base/sort-as.md#d4325t210)**

    Processors that sort SHOULD use the following precedence rules:

    -   A `<sort-as>` element that is specified in a title takes precedence over a `<sort-as>` element that is specified as a child of the topic prolog.
    -   Except for instances in the topic prolog, processors only apply `<sort-as>` elements that are either a direct child of the element to be sorted or a direct child of the title- or label-defining element of the element to be sorted.
    -   When an element contains multiple, direct-child, `<sort-as>` elements, the first direct-child `<sort-as>` element in document order takes precedence.
    -   It is an error if there is more than one `<sort-as>` child for a given `<indexterm>` element.

    -   Sort phrases are determined after filtering and content reference resolution occur.
-   **[DITAREQ-1370](../langRef/base/sort-as.md#d4325e258)**

    When a `<sort-as>` element is specified, processors that sort the containing element MUST construct the effective sort phrase by prepending the content of the `<sort-as>` element to the base sort phrase.

-   **[DITAREQ-1380](../langRef/base/required-cleanup.md#d3517e47)**

    Processors MUST strip this element from output by default.

-   **[DITAREQ-1390](../langRef/ditaval/prop.md#d4536e161)**

    For the `@color` and `@backcolor` attributes on `<prop>` and `<revprop>`, processors SHOULD support at least the following values:

    -   The color names listed under the heading "&lt;color&gt;" in [the XSL version 1.1 specification](http://www.w3.org/TR/2006/REC-xsl11-20061205/#datatype)
    -   The associated hex code
-   **[DITAREQ-1400](../langRef/ditaval/prop.md#d4536e201)**

    For the `@style` attribute on `<prop>` and `<revprop>`, processors SHOULD support the following tokens:

    -   bold
    -   double-underline
    -   italics
    -   overline
    -   underline
-   **[DITAREQ-1410](../langRef/ditaval/prop.md#d4536e233)**

    In addition, processors MAY support proprietary tokens for the `@style` attribute.

-   **[DITAREQ-1420](../langRef/ditaval/prop.md#d4536t240)**

    Such tokens SHOULD have a processor-specific prefix to identify them as proprietary.

-   **[DITAREQ-1430](../langRef/ditaval/prop.md#d4536t243)**

    If a processor encounters an unsupported style token, it MAY issue a warning, and it MAY render content that is flagged with such a style token by using some default formatting.

-   **[DITAREQ-1440](../langRef/ditaval/revprop.md#d3133e79)**

    For the `@color` and `@backcolor` attributes on `<prop>` and `<revprop>`, processors SHOULD support at least the following values:

    -   The color names listed under the heading "&lt;color&gt;" in [the XSL version 1.1 specification](http://www.w3.org/TR/2006/REC-xsl11-20061205/#datatype)
    -   The associated hex code
-   **[DITAREQ-1450](../langRef/ditaval/revprop.md#d3133e119)**

    For the `@style` attribute on `<prop>` and `<revprop>`, processors SHOULD support the following tokens:

    -   bold
    -   double-underline
    -   italics
    -   overline
    -   underline
-   **[DITAREQ-1460](../langRef/ditaval/revprop.md#d3133e151)**

    In addition, processors MAY support proprietary tokens for the `@style` attribute.

-   **[DITAREQ-1470](../langRef/ditaval/revprop.md#d3133t158)**

    Such tokens SHOULD have a processor-specific prefix to identify them as proprietary.

-   **[DITAREQ-1480](../langRef/ditaval/revprop.md#d3133t161)**

    If a processor encounters an unsupported style token, it MAY issue a warning, and it MAY render content that is flagged with such a style token by using some default formatting.

-   **[DITAREQ-1490](../langRef/ditaval/revprop.md#d3133t183)**

    In such cases processors MAY provide an error or warning message.

-   **[DITAREQ-1500](../conformance/conformance.md#d4213t19)**

    Any implementation that supports a feature MUST conform to all rules laid out in the section that describes the feature.

-   **[DITAREQ-1510](../conformance/conformance.md#d4213e195)**

    Conforming DITA implementations SHOULD include a conformance statement that gives the version of the DITA specification that is supported, indicate if all features from the list above are supported, and indicate that all normative rendering rules are supported.

-   **[DITAREQ-1520](../conformance/conformance.md#d4213e201)**

    If only a subset of features is supported, implementations SHOULD indicate which features are \(or are not\) supported.

-   **[DITAREQ-1530](../conformance/conformance.md#d4213t205)**

    If an implementation supports rendering DITA elements but does not render all elements as described above, that application SHOULD indicate which elements are \(or are not\) supported.

-   **[DITAREQ-1540](../conformance/conformance.md#d4213t214)**

    However, any application that renders content references MUST conform to the rules described in the section [../../archSpec/base/conref.md](../../archSpec/base/conref.md).

-   **[DITAREQ-1550](../conformance/conformance.md#d4213t222)**

    An implementation that does not support a particular feature MUST be prepared to interoperate with other implementations that do support the feature.

-   **[DITAREQ-1560](../conformance/conformance.md#d4213e238)**

    A DITA document that refers to document type shells distributed by OASIS MUST be valid according to both the grammar files and any assertions provided in the language reference.

-   **[DITAREQ-1570](../conformance/conformance.md#d4213e244)**

    If a DITA document's custom document type shell includes constraints, those constraints MUST also conform to the rules laid out in [../../archSpec/base/constraint-rules.md](../../archSpec/base/constraint-rules.md)

-   **[DITAREQ-1580](../conformance/conformance.md#d4213e251)**

    If a DITA document's custom document type shell includes expansion modules, those moduless MUST also conform to the rules laid out in [../../archSpec/base/expansion-module-rules.md](../../archSpec/base/expansion-module-rules.md)

-   **[DITAREQ-1590](../conformance/conformance.md#d4213e258)**

    If a DITA document uses specialized elements, those elements MUST also conform to the rules laid out in [../../archSpec/base/specialization-rules-elements.md](../../archSpec/base/specialization-rules-elements.md) and [../../archSpec/base/specialization-class-attribute.md](../../archSpec/base/specialization-class-attribute.md).

-   **[DITAREQ-1600](../conformance/conformance.md#d4213e268)**

    If a DITA document uses specialized attributes, those attributes MUST also conform to the rules laid out in [../../archSpec/base/specialization-rules-attributes.md](../../archSpec/base/specialization-rules-attributes.md) and [../../archSpec/base/specialization-specializations-attribute.md](../../archSpec/base/specialization-specializations-attribute.md).


