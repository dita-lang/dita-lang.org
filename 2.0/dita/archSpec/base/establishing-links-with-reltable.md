---
author: [OASIS DITA Technical Committee, OASIS DITA Technical Committee]
---

# How relationship tables establish linking relationships

In a DITA map, relationship tables establish linking relationships among topic references by organizing `<topicref>` elements into rows, columns, and cells.

A `<reltable>` element defines relationships that processors can express as topic-to-topic links in generated output. By default, relationship-table content is not rendered as part of navigation structures such as a table of contents.

Relationship tables define relationships at the row level. A `<relrow>` element establishes relationships among the topic references that are contained in its `<relcell>` elements. Topic references in different cells of the same row are related. By default, topic references that are in the same cell do not establish linking relationships to each other.

Relationship table columns are typically used to group topic references that share some trait. exampleFor example, a three column table might use the columns to set up relationships between concept, task, and reference topics, while a two column table might be used to set up relationships between local topics in the first column and external resources in the second..

A `<relheader>` element can act as a header for the table, using `<relcolspec>` elements to explicitly lay out column semantics. exampleFor example, the `<relcolspec>` element can set `@type` or `@scope` to declare something about the topic references in each column.

By default, linking relationships in maps are reciprocal. Therefore, topics referenced in different cells of the same row link to each other in both directions, subject to processor rendering behavior. Authors can modify this default behavior using the `@linking` attribute. exampleFor example, setting `linking="targetonly"` on a relationship table cell means that the row establishes links from other cells to that cell, but does not establish links from that cell out to other topics in the row.

Within the scope of a root map, the effective relationship table is the union of relationship tables that occur in the map hierarchy.

## Sample relationship table

In the following example, `overview.dita`, `configure.dita`, `parameters.dita`, and `messages.dita` establish row-based related-link relationships. By default, `parameters.dita` and `messages.dita` are not related to each other solely because they are in the same cell.

-   `overview.dita` establishes a related-link relationship to all other topics in the row.
-   `configure.dita` establishes a related-link relationship to all other topics in the row.
-   `parameters.dita` and `messages.dita` do not establish related-link relationships to each other, but they both establish related-link relationships to `overview.dita` and `configure.dita` in the other cells.

```

<map>
  <reltable>
    <relheader>
      <relcolspec type="concept"/>
      <relcolspec type="task"/>
      <relcolspec type="reference"/>
    </relheader>
    <relrow>
      <relcell>
        <topicref href="overview.dita"/>
      </relcell>
      <relcell>
        <topicref href="configure.dita"/>
      </relcell>
      <relcell>
        <topicref href="parameters.dita"/>
        <topicref href="messages.dita"/>
      </relcell>
    </relrow>
  </reltable>
</map>

```

**Parent topic:**[DITA maps and their usage](../../archSpec/base/dita-maps-and-their-usage.md)

