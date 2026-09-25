---
author: OASIS DITA Technical Committee
---

# Overview of DITA

The Darwin Information Typing Architecture \(DITA\) is an XML-based architecture for authoring, producing, and delivering topic-oriented, information-typed content that can be reused and single-sourced in a variety of ways. While DITA historically has been driven by the requirements of large-scale technical documentation authoring, management, and delivery, it is a standard that is applicable to any kind of publication or information that might be presented to readers, including interactive training and educational materials, standards, reports, business documents, trade books, travel and nature guides, and more.

DITA is designed for creating new document types and describing new information domains based on existing types and domains. The process for creating new types and domains is called specialization. Specialization enables the creation of specific, targeted XML grammars that can still use tools and design rules that were developed for more general types and domains; this is similar to how classes in an object-oriented system can inherit the methods of ancestor classes.

Because DITA topics are conforming XML documents, they can be readily viewed, edited, and validated using standard XML tools, although realizing the full potential of DITA requires using DITA-aware tools.

**Draft comment:**Kristen J Eberlein 03 June 2019  


This section of the spec now contains material about topics, maps, and metadata that was previously in the "DITA markup" section."

We need to carefully consider what of this content is appropriate. Some of it – information about map elements and attributes, metadata – is duplicated elsewhere. If we think it is useful to have a high-level overview here, we should mark it as non-normative – and point users to the normative coverage of the topic.

In a parallel move, I think we'll need to move coverage of critical DITA attributes into a more prominent place in the spec.

**Draft comment:**robander   
TO RESOLVE 12 May 2026: Not sure how best to resolve this. I don't think we need to explicitly declare "non-normative" just because it's giving an overview rather than normative RFC rules – most of the spec isn't made up of RFC rules.

We could

-   Run a magic robot across it and see if this information is duplicated elsewhere
-   If so, either reuse by conref, or make sure that the wording is consistent, or replace with pointers
-   and leave it at that, as long as the info is accurate we keep it here
-   The critical attributes bit already has additional draft comments specific to that section

-   **[Basic concepts](../../archSpec/base/basic-concepts.md)**  
DITA has been designed to satisfy requirements for information typing, semantic markup, modularity, reuse, interchange, and production of different deliverable forms from a single source. These topics provide an overview of the key DITA features and facilities that serve to satisfy these requirements.
-   **[Producing different deliverables from a single source](../../archSpec/base/single-sourcing.md)**  
DITA is designed to enable the production of multiple deliverable formats from a single set of DITA content. This means that many rendition details are specified neither in the DITA specification nor in the DITA content; the rendition details are defined and controlled by the processors.
-   **[DITA topics](../../archSpec/base/topicover.md)**  
DITA topics are the basic units of DITA content and the basic units of reuse. Each topic contains a single subject.
-   **[DITA maps](../../archSpec/base/ditamaps.md)**  
This topic collection contains information about DITA maps and the purposes that they serve. It also includes high-level information about DITA map elements, attributes, and metadata.
-   **[DITA metadata](../../archSpec/base/dita-metadata.md)**  
Metadata can be applied in both DITA topics and DITA maps. Metadata that is specified in DITA topics can be supplemented or overridden by metadata that is assigned in a DITA map. This design facilitates the reuse of DITA topics in different DITA maps and use-specific contexts.

