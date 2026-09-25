---
author: [OASIS DITA Technical Committee, OASIS DITA Technical Committee]
---

# Accessible tables

The complexity of table rendering requires authors and processors to be aware of several table-specific elements and attributes if they want to ensure that tables are accessible.

DITA topics support two types of tables: complex table and simple table.

The `<table>` element uses the OASIS Exchange Table Model, a simplification of the CALS table model. The complex table provides a wide variety of controls over the display properties of the data and even the table structure itself.

The `<simpletable>` element is structurally less complex than the `<table>` element and so is an easier base for specialization. It reflects a content model that is close to the HTML table. The `<simpletable>` element does not provide much control over formatting, although it permits titles and row and column spanning.

The following list provides information about table features that have an effect on table accessibility. Note that some features are applicable only to the complex tables that are produced by the `<table>` element.

-   **Captions**

    Both table models allow for a caption to be provided by using the `<title>` element.

-   **Cell headers**

    When entries within a table function as headers, but do not fall into the categories of column or row headers, the `@id` and `@headers` attributes on table cells can be used to associate table cells with headers. Specifying the `@id` attribute on the cell that functions as a header, and setting the `@headers` attribute to that ID value on the table cell for which it acts as a header serves to relate table cells to headers.

-   **Column headers**

    Column headers are created using a header row, where each cell in the header row provides a header for other cells in its column. Both table models provide support for column headers:

    -   **Complex table**

        The `<thead>` element can provide one or more header rows.

    -   **Simple table**

        The `<sthead>` element can provide a single row header.

-   **Row headers**

    Row headers are created using a header column, where each cell in the header column provides a header for other cells in its row. Both table models provide support for row headers:

    -   **Complex table**

        \(First column\) The `@rowheader` attribute can be set to firstcol on the `<table>` element to indicate that the first column is a header. Alternatively, the `@scope` attribute for each entry in the first column can be set to row to indicate that those cells are headers for their respective rows.

        \(Other columns\) The `<colspec>` element can define which columns function as headers. For that case, set the `@rowheader` attribute to headers on the column or columns that function as headers. Alternatively, set the `@scope` attribute on each relevant entry in the column to row, indicating that the entry is a header for the entire row.

    -   **Simple table**

        The `@keycol` attribute can be set to the number of the column that functions as a header.

-   **Summaries**

    \(Complex table only\) While the `@summary` attribute on tables is deprecated in HTML5, the `<desc>` element within a `<table>` can be used to store a summary. Since the content of the `<desc>` element is typically rendered as part of the content flow when used within `<table>`, processors might need special configuration to support this usage.


**Parent topic:**[Accessibility](../../archSpec/base/accessibility.md)

