# Cascading of roles from map to map

When specialized `<topicref>` elements, such as `<chapter>` or `<mapref>`, reference a map, they typically imply a semantic role for the referenced content.

**Draft comment:**Kristen J Eberlein 04 July 2019  


We need to look at the instances of "should" in this topic. Can they be recast? Do we need to introduce RFC-2119 language?

**Draft comment:**robander   
TO RESOLVE 11 May 2026: just need to do the editorial pass and clean up each use of should, use RFC if needed.

Update August 27 2026 - the impose role is available for this as noted below, and needs to be incorporated here

The semantic role reflects the `@class` hierarchy of the referencing `<topicref>` element. Itis equivalent to having the `@class` attribute from the referencing `<topicref>` cascade to the top-level `<topicref>` elements in the referenced map. Although this cascade behavior is not universal, there are general guidelines for when a role based on the `@class` attribute cascades.

When a `<topicref>` element or a specialization of a `<topicref>` element references a DITA resource, it defines a role for that resource. In some cases this role is straightforward, such as when a `<topicref>` element references a DITA topic \(giving it the already known role of "topic"\), or when a `<mapref>` element references a DITA map \(giving it the role of "DITA map"\).

**Draft comment:**rodaande 8 Feb 2022  
The following paragraph includes the statement: "the non-default behavior should be clearly specified"

We do not say how or where. For mapgroup, I believe it is only specified here in this topic. I think either we need this as part of every mapgroup element definition, in "Processing expectations", or we need a clear table here listing every element where this behavior does not apply.

**Draft comment:**robander   
TO RESOLVE 11 May 2026: I believe the `@impose-role` attribute is now available for this, we should say so and link to the topic about it.

Bigger issue, this topic is not listed in the root map, as reported in [https://github.com/oasis-tcs/dita/issues/959](https://github.com/oasis-tcs/dita/issues/959), but it has normative language. This topic needs to be restored to the spec and/or merged with the new topic about imposing roles.

Unless otherwise instructed, a specialized `<topicref>` element that references a map supplies a role for the referenced content. This means that, in effect, the `@class` attribute of the referencing element cascades to top-level topicref elements in the referenced map. In situations where this should not happen—such as all elements from the mapgroup domain—the non-default behavior should be clearly specified.

exampleFor example, when a `<chapter>` element from the bookmap specialization references a map, it supplies a role of "chapter" for each top-level `<topicref>` element in the referenced map. When the `<chapter>` element references a branch in another map, it supplies a role of "chapter" for that branch. In effect, the `@class` attribute for `<chapter>` \(`"- map/topicref bookmap/chapter "`\) cascades to the top-level `<topicref>` elements in the nested map, although it does not cascade any further.

Because the `<mapref>` element is a convenience element, the top-level `<topicref>` elements in the map referenced by a `<mapref>` element MUST NOT be processed as if they are `<mapref>` elements. The `@class` attribute from the `<mapref>` element \(`"+ map/topicref mapgroup-d/mapref "`\) does not cascade to the referenced map.

In some cases, preserving the role of the referencing element might result in out-of-context content. exampleFor example, a `<chapter>` element that references a bookmap might pull in `<part>` elements that contain nested `<chapter>` elements. Treating the `<part>` element as a `<chapter>` will result in a chapter that nests other chapters, which is not valid in bookmap and might not be understandable by processors. The result is implementation specific. Processors MAY choose to treat this as an error, issue a warning, or simply assign new roles to the problematic elements.

