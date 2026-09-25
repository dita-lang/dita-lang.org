---
author: OASIS DITA Technical Committee
---

# Conformance

An implementation is a conforming implementation of DITA if the implementation meets the conditions that are described in Section 10.1. A document is a conforming DITA document if the document meets the conditions in that are described in Section 10.2.

Conformance to the DITA specification allows documents and document types that are used with different processors to produce the same or similar results with little or no reimplementation or modification. Conformance also allows DITA specializations to work with any conforming DITA application, with at least the same level of support available to unspecialized documents.

## 10.1 Conformance of DITA implementations

The DITA specification defines several core features, as summarized in the following list. Any implementation that supports a feature MUST conform to all rules laid out in the section that describes the feature.

1.  Specialization-based processing, as described in [The class attribute rules and syntax](../archSpec/base/specialization-class-attribute.md).
2.  Resolving indirect key-based references using the `@keyref` attribute, as defined in [Processing key references](../archSpec/base/processing-key-references-general.md), [Processing key references for navigation links and images](../archSpec/base/processing-keyref-for-links.md), [Processing key references on topicref elements](../archSpec/base/processing-keyref-on-topicref.md), and [Processing key references to generate text or link text](../archSpec/base/processing-keyref-for-text.md).
3.  Referencing content for reuse within a document, as described in [Direct URI-based content reuse](../archSpec/base/theconrefattribute.md), [Indirect key-based content reuse](../archSpec/base/theconkeyrefattribute.md), [Reusing a range of elements](../archSpec/base/theconrefendattribute.md), [Processing conrefs](../archSpec/base/conref-processing.md), [Processing attributes when resolving conrefs](../archSpec/base/conref-attributes-specified-on-elements.md), and [Processing xrefs and conrefs within a conref](../archSpec/base/handling-xref-and-conref-within-topics.md)
4.  Referencing a location to push reused content into another location, as described in [Pushing reusable content to a new location](../archSpec/base/theconactionattribute.md).
5.  Resolving conditional processing based on DITAVAL documents, as described in [Expectations for conditional processing](../archSpec/base/conditionalprocessingexpectations.md), [Conditional processing attribute values](../archSpec/base/usage-of-conditional-processing-attributes.md), [Conditional processing attribute values with groups](../archSpec/base/usage-of-conditional-processing-attribute-groups.md), [Filtering based on metadata attributes](../archSpec/base/filtering.md), and [Flagging based on metadata attributes](../archSpec/base/flagging.md).
6.  Resolving branch filtering markup, as described in [Overview of branch filtering](../archSpec/base/branch-filtering-overview.md), [How filtering rules interact](../archSpec/base/branch-filtering-interactions.md), [Branch filtering: Single referenced DITAVAL document for a branch](../archSpec/base/branch-filtering-single-set.md), [Branch filtering: Multiple referenced DITAVAL documents for a branch](../archSpec/base/branch-filtering-multiple-sets.md), [Branch filtering: Impact on resource and key names](../archSpec/base/branch-filtering-resource-names.md), and [Branch filtering: Implications of processing order](../archSpec/base/branch-filtering-implications-of-processing-order.md).
7.  Resolving `@chunk` attributes, as described in [About the chunk attribute](../archSpec/base/chunk-attribute-overview.md), [Processing chunk="combine"](../archSpec/base/chunk-attribute-combine.md), and [Processing chunk="split"](../archSpec/base/chunk-attribute-split.md).

In addition, certain DITA elements have normative rules associated regarding how to render or process those elements.

1.  `<desc>`, as described in [desc](../langRef/base/desc.md)
2.  `<draft-comment>`, as described in [draft-comment](../langRef/base/draft-comment.md)
3.  `<image>`, as described in [image](../langRef/base/image.md)
4.  `<linklist>`, as described in [linklist](../langRef/base/linklist.md)
5.  `<pre>`, as described in [pre](../langRef/base/pre.md)
6.  `<q>`, as described in [q](../langRef/base/q.md)
7.  `<related-links>`, as described in [related-links](../langRef/base/related-links.md)
8.  `<relcolspec>`, as described in [relcolspec](../langRef/base/relcolspec.md)
9.  `<reltable>`, as described in [reltable](../langRef/base/reltable.md)
10. `<shortdesc>`, as described in [shortdesc](../langRef/base/shortdesc.md)
11. `<title>`, as described in [title](../langRef/base/title.md)
12. `<titlealt>`, as described in [titlealt](../langRef/base/titlealt.md)
13. `<topichead>`, as described in [topichead](../langRef/base/topichead.md)

Conforming DITA implementations SHOULD include a conformance statement that gives the version of the DITA specification that is supported, indicate if all features from the list above are supported, and indicate that all normative rendering rules are supported.

If only a subset of features is supported, implementations SHOULD indicate which features are \(or are not\) supported. If an implementation supports rendering DITA elements but does not render all elements as described above, that application SHOULD indicate which elements are \(or are not\) supported.

Not all DITA features are relevant for all implementations. For example, a DITA editor that does not render content references in context does not need to conform to rules regarding the `@conref` attribute. However, any application that renders content references MUST conform to the rules described in the section [Content reference \(conref\)](../archSpec/base/conref.md).

Implementations that support only a subset of DITA features are considered conforming as long as all supported features follow the requirements that are given in the DITA specification. An implementation that does not support a particular feature MUST be prepared to interoperate with other implementations that do support the feature.

## 10.2 Conformance of DITA documents

A document conforms with the DITA standard if it meets all of the following conditions.

1.  A DITA document that refers to document type shells distributed by OASIS MUST be valid according to both the grammar files and any assertions provided in the language reference.
2.  If a DITA document's custom document type shell includes constraints, those constraints MUST also conform to the rules laid out in [Constraint rules](../archSpec/base/constraint-rules.md)
3.  If a DITA document's custom document type shell includes expansion modules, those moduless MUST also conform to the rules laid out in [Expansion module rules](../archSpec/base/expansion-module-rules.md)
4.  If a DITA document uses specialized elements, those elements MUST also conform to the rules laid out in [Specialization rules for element types](../archSpec/base/specialization-rules-elements.md) and [The class attribute rules and syntax](../archSpec/base/specialization-class-attribute.md).
5.  If a DITA document uses specialized attributes, those attributes MUST also conform to the rules laid out in [Specialization rules for attributes](../archSpec/base/specialization-rules-attributes.md) and [The specializations attribute rules and syntax](../archSpec/base/specialization-specializations-attribute.md).

