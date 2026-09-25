---
author: OASIS DITA Technical Committee
---

# DITA maps and their usage

DITA maps serve a variety of roles, both setting up navigation hierarchies and creating relationships between topics and resources. These relationships can be both explicit based on relationship tables and attributes within the map, and implicit based on how topic references are nested within the map.

**Draft comment:**Kristen J Eberlein 02 December 2021  


Zoe made the following comment during review A:

"Why are we talking about hierarchical links when discussing rendering expectations for related-links? I'm not sure this is the right location for this information. However, I'm not sure where that information is. I was trying to figure out where it's spelled out how parent/child links are 'expected' to be rendered and I didn't have luck finding it \(partially because I went cross-eyed looking at the 104 references to "linking".\)"

Can we please add a related link \[from the related-links topic\] to the related-links section of the spec?

**Draft comment:**robander   
TO RESOLVE 11 May 2026: Sure, add a link. I've now gone through the full "topic wish list" from this page, we still need to check that it doesn't overlap with all the sections called out below, then delete the TODO section and table.

## TODO: Current topics with applicable content

TODO: verify that content in the referenced topics below is consistent with or compliments the new topics created for this section.

|Topic|Applicable content|
|-----|------------------|
|[Example: DITA map that references a subordinate map](example-simple-map-w-submap.md)|Resolution of a submap.|
|[Example: DITA map with a simple relationship table](example-simple-map-w-reltable.md)|How links are generated from a relationship table; how processors might represent a relationship table.|
|[Example: How the collection-type and linking attributes determine links](example-collection-type-and-linking-atts.md)|Effect of `@collection-type` and `@linking` attributes on generated links.|
|[Navigation](navigation.md)|Container topic; incorporate into new "DITA maps and their usage" cluster.|
|[Table of contents](table-of-contents.md)|All content is applicable and needs to be incorporated into the new "DITA maps and their usage" cluster – Closest thing we currently have to a topic about how maps create hierarchies.|
|[map](../../langRef/base/map.md)|Relationships between topics created by map hierarchy or `@collection-type` attribute; role of titles, especially in submaps.|
|[topicref](../../langRef/base/topicref.md)|Role of `<topicref>` nesting in creating containment hierarchies and parent-child relationships.|
|[reltable](../../langRef/base/reltable.md)|Relationship table titles – Processing expectations for relationship tables \(not rendered, used to generate links\) – “Within a map tree, the effective relationship table is the union of all relationship tables in the map.” – How a DITA-aware tool might represent the `<reltable>` element graphically.|
|[relcolspec](../../langRef/base/relcolspec.md)|How labels for related links from a relationship table are generated.|
|[mapref](../../langRef/base/mapref.md)|“The hierarchy of the referenced map is merged into the container map at the position of the reference, and the relationship tables of the child map are added to the parent map.”|
|[topicgroup](../../langRef/base/topicgroup.md)|How processors handle navigation titles within `<topicgroup>` elements.|
|[The format attribute](theformatattribute.md)|How processors determine the value of the `@format` attribute when it is not explicitly set.|

-   **[How topicref elements establish hierarchies in a map](../../archSpec/base/topicref-creating-hierarchies.md)**  
 In a DITA map, `<topicref>` elements establish hierarchical relationships among referenced topics and can define ordered sequences that processors can use to derive navigation.
-   **[How relationship tables establish linking relationships](../../archSpec/base/establishing-links-with-reltable.md)**  
 In a DITA map, relationship tables establish linking relationships among topic references by organizing `<topicref>` elements into rows, columns, and cells.
-   **[Controlling link relationships with collection-type and linking](../../archSpec/base/controlling-linking-with-attributes.md)**  
 In DITA maps, the `@collection-type` and `@linking` attributes can be used to modify default linking behavior and to make implied relationships explicit.
-   **[Using titles in maps and submaps](../../archSpec/base/title-usage-within-maps.md)**  
 Titles in DITA maps can serve different roles depending on where they are located. The `<titlealt>` element and the alternative-title domain also provide the ability to include a variety of different titles for additional purposes. This topic serves as a guide for how implementations generally treat titles when publishing DITA content.
-   **[Imposing roles when referencing a map](../../archSpec/base/impose-topicref-role.md)**  
When specialized `<topicref>` elements reference a map, they might imply a semantic role for the referenced content. The `@impose-role` attribute provides a mechanism to declare that such references impose their original role on referenced content.
-   **[Specialized convenience elements in the map group domain](../../archSpec/base/map-convenience-elements.md)**  
 DITA specialization can be used to create convenience elements that simplify authoring while preserving the processing behavior of existing base elements. Most of the elements in the map group domain are created for this purpose.
-   **[Examples of DITA maps](../../archSpec/base/example-ditamaps.md)**  
This section of the specification contains simple examples of DITA maps. The examples illustrate a few of the ways that DITA maps are used.

**Parent topic:**[DITA maps](../../archSpec/base/dita-maps.md)

