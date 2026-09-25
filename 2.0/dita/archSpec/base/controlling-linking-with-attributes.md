---
author: OASIS DITA Technical Committee
---

# Controlling link relationships with `@collection-type` and `@linking`

In DITA maps, the `@collection-type` and `@linking` attributes can be used to modify default linking behavior and to make implied relationships explicit.

DITA map structures imply relationships among referenced topics, which many processors will use to generated related links. Map authors can refine that behavior by setting `@collection-type` and `@linking` on elements within the map.

The `@collection-type` attribute specifies how child topic references of a map branch relate to each other. This enables authors to make relationship intent explicit in the map, rather than relying on processor defaults. exampleFor example, the value sequence can indicate ordered progression, while `family` can indicate that all sibling topics within that branch are related.

The `@linking` attribute controls how a topic references participate in map-based relationships. Authors can use these values to prevent undesired reciprocal links, suppress participation in relationship calculations, or constrain linking direction for supporting resources. exampleFor example, using the value none indicates that no links should be generated to or from the resource, while targetonly indicates that the a processor can generate links to the referenced topic but should not generate links from that topic to other resources.

## Example: Explicit control of sequence and link direction

In the following example, the first branch explicitly declares an ordered sequence. A processor can use that to generate next and previous links among the three sibling topics. In the relationship table, the reference-column setting `linking="targetonly"` indicates that related topics can link to `install-options.dita` without setting up reciprocal links from that topic.

```

<map>
  <topicref href="installing.dita" collection-type="sequence">
    <topicref href="prerequisites.dita"/>
    <topicref href="install-software.dita"/>
    <topicref href="verify-installation.dita"/>
  </topicref>

  <reltable>
    <relheader>
      <relcolspec type="task"/>
      <relcolspec type="reference" linking="targetonly"/>
    </relheader>
    <relrow>
      <relcell>
        <topicref href="install-software.dita"/>
      </relcell>
      <relcell>
        <topicref href="install-options.dita"/>
      </relcell>
    </relrow>
  </reltable>
</map>

```

**Parent topic:**[DITA maps and their usage](../../archSpec/base/dita-maps-and-their-usage.md)

