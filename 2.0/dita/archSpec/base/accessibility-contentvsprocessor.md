---
author: OASIS DITA Technical Committee
---

# Handling accessibility in content and in processors

Accessibility requirements vary depending on how content is rendered. Making content accessible is work that involves both content authors and the processors that render DITA content.

The foundation for accessible content is the Web Content Accessibility Guidelines \(WCAG\) from W3C. While content formats and content authors might have unique or additional accessibility needs, the rules outlined in the WCAG provide a reference point for considering how to create accessible content in DITA.

The guidelines fall into several categories:

-   **General content guidelines**

    Many accessibility guidelines and best practices apply to all content. Such guidelines are generally outside the scope of this specification.

    exampleFor example, a guideline might recommend against multiple levels of nested unordered lists, because such lists are difficult to navigate with a screen reader. As a general content standard, DITA cannot prohibit such nesting. However, implementations can prevent such nesting through business processes or rule-based processing such as Schematron.

    Another common accessibility recommendation is to avoid flashing or flickering video content. The DITA `<video>` element is a general mechanism for including video, and the content of that video is outside the scope of this specification.

-   **Markup guidelines**

    Other accessibility guidelines require the use of specific DITA markup. Such guidelines are addressed in this specification.

    exampleFor example, a requirement that images specify alternate text requires the use of the `<alt>` element within the `<image>` element. However, a guideline that the alternate text be *meaningful* is not something that can be enforced by DITA markup.

-   **Guidelines that require enablement by DITA processors**

    Some accessibility guidelines require processors to take advantage of specific DITA markup.

    exampleAuthors can use specific markup to enable accessible output. For example, by specifying a header row in a table, an author can define a header for every cell in the table body. However, to make the relationship between the table cell and header cell specific in a rendered format like HTML, the processor must make those relationships explicit in the output.

-   **Processor requirements outside the scope of DITA markup**

    Processors have many other accessibility concerns that are outside the scope of this specification.

    exampleFor example, WCAG has a requirement for contrast ratios when rendering substantive content. That requirement is unrelated to the source content. Such requirements apply to rendering mechanisms such as the CSS that is used to style DITA content in a browser.

    exampleAs another example, a DITA processor might generate automated headings or include characters in output, such as:

    -   A section heading for an element specialized from `<section>`, such as Requirements for the `<prereq>` element in a task topic
    -   The greater-than character \(&gt;\) that is typically used between phrases that are part of a menu navigation
    It is up to the processor to use correct rendering for these cases, such as heading markup and accessible text alternatives for character displays such as the menu separator.


**Parent topic:**[Accessibility](../../archSpec/base/accessibility.md)

**Related information**  


[Web Content Accessibility Guidelines 2.0](https://www.w3.org/TR/WCAG21/)

