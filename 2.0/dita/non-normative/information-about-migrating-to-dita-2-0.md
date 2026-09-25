---
author: OASIS DITA Technical Committee
---

# Information about migrating to DITA 2.0

This topic includes information on required steps to migrate content from DITA 1.x to DITA 2.0.

**Draft comment:**rodaande   
Initial draft of this topic includes all changes from both the base specification and the technical content specification.

It does not currently cover the duplicate learning modules that were removed.

**Draft comment:**robander   
TO RESOLVE 13 May 2026:

-   We have a bunch of other topics I found when working through draft comments, that may also contain some of this info. Need to use one or the other, and make sure the one we use is complete / comprehensive for the base spec.
-   But we also need to move all the technical-content related changes over to the technical content spec.
-   Learning is odd because that wasn't even technical-content. I think this page should note that technical content also included changes that are covered in that spec; then we could still add a note in this non-normative appendix stating that learning is not provided as a 2.0 standard but that all modules can be updated for compatibility, or whatever wording we've been using.

## Markup to migrate for DITA 2.0

The following elements and attributes have been removed from the grammar as obsolete. They have been replaced by alternate markup or approaches.

-   The `@navtitle` attribute on the `<topicref>` element is replaced by the `<navtitle>` or `<titlehint>` element within `<topicmeta>`. Use `<navtitle>` if you wish to preserve the title in any table of contents; use `<titlehint>` if you only used this attribute as a hint about the topic purpose.
-   The `@locktitle` attribute is removed from `<topicref>` element. To preserve the title locking behavior, ensure you use the `<navtitle>` element inside of `<topicmeta>`.
-   In maps, the `@title` attribute on `<map>` is replaced by the `<title>` element inside of the map.
-   In maps, the `@title` attribute on `<reltable>` elements is replaced by the `<title>` element inside of the relationship table.
-   In maps, all existing values for the `@chunk` attribute are removed. In the attribute, the DITA 1.x token to-content is replaced by the token combine, and the by-topic token is replaced by the token split. Other tokens from 1.x are no longer supported.
-   The `@keys` attribute is now defined using the XML type [NMTOKENS](https://www.w3.org/TR/2006/REC-xml11-20060816/#NT-Nmtokens). While this is very close to the definition in DITA 1.x, it is possible that some key names may no longer be considered valid. If more than one key name is specified, the updated definition requires that it be separated by a space character, while previously any white space was allowed. If XML parsers do not accept an existing key name, it will need to be updated for DITA 2.0.
-   The `@alt` attribute on images is removed in favor of the `<alt>` element within the image.
-   The `@longdescref` attribute on images is removed in favor of the `<longdescref>` element within the image.
-   The `@print` attribute is removed in favor of the specialized `@deliveryTarget` attribute.
-   The `@copy-to` attribute is removed in favor of an updated `<resourceid>` element that can specify the copy target.
-   The `<substeps>` and `<substep>` elements are removed in favor of directly nesting the `<steps>` element.
-   The `<topicset>` and `<topicsetref>` elements are removed in favor of the generic `<topicref>` element.
-   The `<index-sort-as>` element is removed in favor of the `<sort-as>` element.
-   The `<titlealts>` element is removed. Alternate titles are now stored within the topic `<prolog>`.
-   The `<linktext>` element in maps is removed in favor of the new `<linktitle>` element.
-   The `<itemgroup>` element is removed in favor of the `<div>` element.
-   The `<sectiondiv>` element is removed in favor of the `<div>` element.
-   The `<state>` element is removed. It can be migrated to the `<data>` element \(if used for metadata\) or to `<keyword>` \(if used as a content element\).
-   The `<unknown>` element is removed in favor of the `<required-cleanup>` element.
-   The `@otherjob` and `@othertype` attributes are removed from the `<audience>` element in favor of the `@job` and `@type` attributes.
-   In the `@type` attribute on the `<hazardstatement>` element, the values attention, fastpath, important, note, other, remember, restriction, and tip are removed. The `@type` attribute on this element is now required. Valid values are now caution, danger, notice, and warning.
-   The location of `<hazardsymbol>` within a hazard statement has moved. It is now located directly within the `<consequence>`, `<howtoavoid>`, `<messagepanel>`, or `<typeofhazard>` elements.
-   The `&nbsp;` entity is removed from the grammar files in favor of using the character or a hexidecimal entity.

## Obsolete markup to remove

The following elements and attributes have been removed from the grammar as obsolete. They can be removed.

-   The `<boolean>` element is removed.
-   The `<indextermref>` element is removed.
-   The `<index-base>` element is removed.
-   The `<data-about>` element is removed.
-   The `<longquoteref>` element is removed.
-   The `<anchor>` element is removed from maps.
-   The `<anchorref>` element is removed from the map group domain.
-   The `<hasInstance>`, `<hasKind>`, `<hasNarrower>`, `<hasPart>`, `<hasRelated>`, `<relatedSubjects>`, `<subjectRel>`, `<subjectRelTable>`, `<subjectRelHeader>`, and `<subjectRole>` elements are removed from the subject scheme specialization.
-   The `<glossAbbreviation>`, `<glossAlternateFor>`, `<glossPartOfSpeech>`, `<glossProperty>`, `<glossScopeNote>`, `<glossShortForm>`, and `<glossStatus>` elements are removed from the glossentry specialization module.
-   The `@collection-type` attribute is removed from the `<reltable>` and `<relcolspec>` elements.
-   The `@keyref` attribute is removed from the `<navref>` element.
-   The `@mapkeyref` attribute is removed from all elements.
-   The `@xtrc` and `@xtrf` attributes are removed from all elements.
-   In the `@collection-type` attribute, the value tree is removed.
-   In the `@role` attribute, the values sample and external are removed.
-   In the `@type` attribute on the `<lq>` element, the values internal and external are removed.
-   In the `@type` attribute on the `<note>` element, the value fastpath is removed.
-   The `@lockmeta` attribute is removed from `<topicmeta>` in maps.
-   The `@query` attribute is removed from all elements.
-   The `@specentry` attribute is removed from all elements.
-   The `@spectitle` attribute is removed from all elements.
-   The `@anchorref` attribute is removed from the `<map>` element.
-   The `@refcols` attribute is removed from `<simpletable>`.
-   The `@archive`, `@archivekeyrefs`, `@classid`, `@classidkeyref`, `@codebase`, `@codebasekeyref`, `@declare`, and `@standby` attributes are removed from the `<object>` element.

## Removed specialization modules

The following specialization modules are no longer maintained as part of the OASIS DITA specification. Although they are no longer defined within the specification, updated versions of these modules can still be used with DITA 2.0.

-   Machinery task domain
-   Classification map domain
-   Delayed conref domain
-   XNAL domain

## Removed document type configurations

The following configurted shells are no longer maintained as part of the OASIS DITA specification.

-   Machinery task doctype configuration
-   Classification map doctype configuration
-   The "glossary.dtd" is removed in favor of the equivalent "glossentry.dtd" doctype configuration.

## Other migration concerns

The following markup may require migration, depending on how you make use of your content.

-   If you are using `@navtitle` or `<navtitle>` in maps as a hint, without using the `@locktitle` attribute, you might need to switch to the new `<titlehint>` element.
-   The `<syntaxdiagram>` and `<synph>` elements have moved from the programming domain into a new syntax diagram domain. If you use these elements within your own configured shells, you will need to update the shells to include the new domain.
-   The `@domains` attribute is replaced by `@specializations`. This attribute is typically set to a default inside of configured doctype shells; migration will typically be required for shells but not for content.
-   The `<dita>` element is defined in the base specification, but was not defined as part of the base DTD or RelaxNG files in DITA 1.x. The element is now defined as a single-element module in the base specification, and that module is imported into the composite document type within the technical content grammar files. Custom shells that use the `<dita>` element can now import that module directly from the base vocabulary.
-   The `@outputclass` attribute in DITA 1.x was defined directly on elements in the DTD and RelaxNG grammar files, but is now part of the universal attribute group. If a specialized element defined this attribute and also uses the universal attribute group, that extra definition is now redundant and will result in a parsing error against the DITA 2.x grammar files. The extra definition of `@outputclass` needs to be removed from the element definition; the attribute will still be defined based on the copy in the universal attribute group.

**Parent topic:**[Migrating to DITA 2.0](../non-normative/migrating-to-dita-2.0.md)

