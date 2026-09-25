---
author: OASIS DITA Technical Committee
---

# Overview of document-type shells

A document-type shell is an XML grammar file that specifies the elements and attributes that are allowed in a DITA document. The document-type shell integrates structural modules, domain modules, and element-configuration modules. In addition, a document-type shell specifies whether and how topics can nest.

A DITA document either must have an associated document-type definition or all required attributes must be made explicit in the document instances. Most DITA documents have an associated document-type shell. DITA documents that reference a document-type shell can be validated using most standard XML processors. Such validation enables processors to read the XML grammar files and determine default values for the `@specializations` and `@class` attributes.

The following figure illustrates the relationship between a DTD-based DITA document, its document-type shell, the vocabulary modules that it uses, and the element-configuration modules \(constraint and expansion\) that it integrates. Similar structure applies to DITA documents that use other XML grammars.

![Diagram showing a typical architecture of a DITA document-type shell. At the top left a DITA document file named myTopic.dita refers to a document type of 'myTopic'. An arrow from this file points to a document-type shell file named myTopic.dtd. Arrows point to several other modules. A constraint module is named strictMyTopicConstraint.mod. An expansion module is named allowEmphMyTopicExpansion.mod.Structural modules are named mytopic.ent, mytopic.mod, topic.ent, and topic.mod. Domain modules are named myPhraseDomain.ent, myPhraseDomain.mod, highlightDomain.ent, highlightDomain.mod, programmingDomain.ent, and programmingDomain.mod. The structural and domain modules are grouped together and labeled vocabulary modules.](../../images/instances-modules-declarations-01.png "Document type shell")

The DITA specification contains a starter set of document-type shells. These document-type shells are commented and can be used as templates for creating custom document-type shells.

While the OASIS-provided document-type shells can be used without any modification, creating custom document-type shells is a best practice. If the document-type shells need to be modified in the future, for example, to include a specialization or integrate an element-configuration module \(constraint or expansion\), the existing DITA documents will not need to be modified to reference a new document-type shell.

**Parent topic:**[Document-type configuration](../../archSpec/base/configuration.md)

