---
author: OASIS DITA Technical Committee
---

# Example: Managing links when chunking

If a topic is referenced more than once and one of those instances involves chunking, links to that topic might be ambiguous. In most of such cases, using key references to keys that are defined directly on the chunked instance of the topic will give the correct result.

Consider the following DITA map, which is used for all examples in this topic:

```
<map>
  <title>Map with chunks and key definitions</title>
  <!-- Key definitions -->
  <keydef href="splitThis.dita" keys="splitThisKey"/>
  <keydef href="splitThis.dita#splitThisChild" keys="splitThisChildKey"/>
  <!-- Navigational structure -->
  <topicref href="splitThis.dita" **chunk="split"** keys="explicitSplitKey"/>
  <topicref href="combineThis.dita" **chunk="combine"** keys="combineThisKey">
    <topicref href="combinedChild.dita" keys="combinedChildKey"/>
  </topicref>
</map>

```

The DITA map references the following topics:

```
**&lt;!-- splitThis.dita --&gt;**
<topic id="splitThisRoot">
  <title>Root topic</title>
  <!-- ... -->
  <topic id="splitThisChild">
    <title>Child topic</title>
    <!-- ... -->
  </topic>
</topic>
```

```
**&lt;!-- combineThis.dita --&gt;**
<topic id="combineThisRoot">
  <title>Root topic</title>
  <!-- ... -->
  <topic id="combineThisChild">
    <title>Child topic</title>
    <!-- ... -->
  </topic>
</topic>
```

```
**&lt;!-- combinedChild.dita --&gt;**
<topic id="combinedChildRoot">
  <title>Topic in map branch, will be combined with parent topicref</title>
  <!-- ... -->
</topic>
```

Assume that the above map is a root map or a submap that is referenced in a context that does not include any references to the above topic documents.

The topic documents that are referenced in the above map are rendered in the following ways:

-   `splitThis.dita`, which contains two topics, is rendered as two documents. For this example, assume the processor creates two documents with names that are based on the topic IDs: `splitThisRoot.dita` and `splitThisChild.dita`.
-   The mapbranch with `combineThis.dita`, which contains two topic references, is rendered as one document: `combineThis.dita`. The document contains the merged content of both `combineThis.dita` and `combinedChild.dita`.

Links are resolved in the following ways. Note that the document names are those listed in the above explanation of how the topic documents are rendered in this scenario.

-   All links that specify `href="splitThis.dita"`, `keyref="splitThisKey"`, or `keyref="explicitSplitKey"` resolve to `splitThisRoot.dita`, which isthe only rendered instance of the topic.
-   All links that specify `href="splitThis.dita#splitThisChild"` or `keyref="splitThisChildKey"` resolve to `splitThisChild.dita`, which isthe only rendered instance of the topic.
-   All links that specify `href="combinedChild.dita"` or `keyref="combinedChildKey"` resolve to that topic within `combineThis.dita`, which isthe only rendered instance of the topic.

Now assume that the above map is used as a submap in another context, where the root map also references the three topic documents. As a result, each of the three topic documents \(`splitThis.dita`, `combineThis.dita`, and `combinedChild.dita`\) are rendered more than once.

In this scenario, the topic documents are rendered in the following ways:

-   The original source document `splitThis.dita` is rendered twice. Based on the map above, assume the processor creates two documents with names that are based on the topic IDs, so that topic becomes `splitThisRoot.dita` and `splitThisChild.dita`. At the same time, `splitThis.dita` is rendered *in another context* as a single document, with a different name.
-   Based on the map above, the branch that starts with the original source document `combineThis.dita` is rendered as one document combined with the content of `combinedChild.dita`. At the same time, those two documents are rendered in another context as individual documents. For this example, assume a processor generates the combined document using the generated name `combinThis-2.dita`, while the documents `combineThis.dita` and `combinedChild.dita` retain their names in the other context.

In this scenario, the links to the topic documents are now problematic:

-   All links in this map that use the direct URI references `href="splitThis.dita"`, `href="splitThis.dita#splitThisChild"`, `href="combineThis.dita"`, or `href="combinedChild.dita"` are ambiguous. They could resolve to either the chunked instance of the topic documents or to the individual topics in the other context. Implementations will have to guess which topic to target: the split or combined instances of the topic documents or the versions in the alternate context from the root map.
-   All links that specify `keyref="splitThisKey"` or `keyref="splitThisChildKey"` are also ambiguous. The key definitions are not associated explicitly with the chunked or not-chunked instance. If key scopes are used, applications might more reliably guess that the intended target is the split copy in this map, but this is not guaranteed.

All links that specify `keyref="explicitSplitKey"`, `keyref="combinedThisKey"`, or `keyref="combinedChildKey"` are unambiguous. These links can only resolve to the chunked instance of the topic documents, because the key definitions are defined directly within the chunked context.

There is no way to unambiguously link to the child document that will result from splitting `splitThis.dita`. This is because a `<topicref>` element that specifies `@chunk` can only associate a key definition with the first or root topic in the document. While other key definition elements can be used to associate keys with other topics in the same document, that can only be done outside of the navigation context that uses `@chunk`. As a result, a processor cannot guarantee whether the intended link target is the split topic from the chunked context or a use of the same topic in the second context.

It is possible for an implementation to define its own way to resolve this ambiguity. However, if a situation requires both multiple instances of split topics and unambiguous cross-implementation links to those split topics, alternate reuse mechanisms need to be considered.

**Draft comment:**Kristen J Eberlein 03 February 2022  


What do we mean by cross-implementation links? Can we rephrase this? Or simply remove the adjective "cross-implementation"?

I think that the situation that we are targeting involves the following:

-   Multiple navigational references to a topic, at least one of which is chunked
-   A need to have unambiguous links to each instance of the topic

**Draft comment:**robander   
TO RESOLVE 11 May 2026: Within the context – this is a paragraph about how implementations can do their own thing. So if you need "unambiguous" resolution across different implementations, you can't rely on that and need to consider alternate reuse mechanisms. We can rephrase to just say "...and unambiguous links to those split topics that resolve the same way across all DITA implementations"

**Parent topic:**[Examples of the chunk attribute](../../archSpec/base/examples-of-chunking.md)

