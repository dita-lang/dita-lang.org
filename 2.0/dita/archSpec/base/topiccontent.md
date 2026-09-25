---
author: OASIS DITA Technical Committee
---

# Topic content

The content of all topics, regardless of topic type, is built on the same common structures.

-   **Topic body**

    The topic body contains all content except for that contained in the title or the short description/abstract. The topic body can be constrained to remove specific elements from the content model; it also can be specialized to add additional specialized elements to the content model. The topic body can be generic while the topic title and prolog are specialized.

-   **Sections and examples**

    The body of a topic might contain divisions, such as sections and examples. They might contain block-level elements like titles and paragraphs and phrase-level elements like API names or text. It is recommend that sections have titles, whether they are entered directly into the `<title>` element or rendered using a fixed or default title.

    Either body divisions or untitled sections or examples can be used to delimit arbitrary structures within a topic body. However, body divisions can nest, but sections and examples cannot contain sections.

-   **`<bodydiv>`**

    The `<bodydiv>` element enables the arbitrary grouping of content within the body of a topic for the purpose of content reuse. The `<bodydiv>` element does not include a title. For content that requires a title, use `<section>` or `<example>`.

-   **`<div>`**

    The `<div>` element enables the arbitrary grouping of content within a topic. The `<div>` element does not include a title. For content that requires a title, use `<section>` or `<example>` or, possibly, `<fig>`.

-   **Block-level elements**

    Paragraphs, lists, figures, and tables are types of "block" elements. As a class of content, they can contain other blocks, phrases, or text, though the rules vary for each structure.

-   **Phrases and keywords**

    Phrase level elements can contain markup to label parts of a paragraph or parts of a sentence as having special semantic meaning or presentation characteristics, such as `<uicontrol>` or `<b>`. Phrases can usually contain other phrases and keywords as well as text. Keywords can only contain text.

-   **Images**

    Images can be inserted to display photographs, illustrations, screen captures, diagrams, and more. At the phrase level, they can display trademark characters, icons, toolbar buttons, and so forth.

-   **Multimedia**

    The `<object>` element enables authors to include multimedia, such as diagrams that can be rotated and expanded. The `<foreign>` element enables authors to include media within topic content, for example, SVG graphics, MathML equations, and so on.


**Parent topic:**[DITA topics](../../archSpec/base/topicover.md)

