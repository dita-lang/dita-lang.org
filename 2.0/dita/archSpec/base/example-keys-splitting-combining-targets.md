---
author: OASIS DITA Technical Committee
---

# Example: Keys and collaboration

Keys enable authors to collaborate and work with evolving content with a minimum of time spent reworking topic references.

In this scenario, authors collaborate on a publication that includes content for a product that is in the early stages of development. The company documentation is highly-structured and uses the same organization for all publications: "Introduction," "Example," and "Reference."

1.  Author one creates a submap for the new product information. She knows the structure that the final content will have, but she does not want to create empty topics for information that is not yet available. She decides to initially author what content is available in a single topic. When more content is available, she'll create additional topics. Her DITA map looks like the following:

    ```
    <map>
      <title>New product content</title>
      <topicref keys="1-overview 1-intro 1-example 1-reference" href="1-overview.dita"/>
    </map>
    ```

2.  Author two knows that he needs to add a `<topicref>` to the "Example" topic that will eventually be authored by author one. He references the not-yet-authored topic by key reference:

    ```
    <topicref keyref="1-example"/>
    ```

    His topic reference initially resolves to the `1-overview.dita` topic.

3.  Author one finally gets the information that she was waiting on. She creates additional topics and modifies her DITA map as follows:

    ```
    <map>
      <title>New product content</title>
      <topicref keys="1-overview" href="1-overview.dita">
        <topicref keys="1-intro" href="1-intro.dita"/>
        <topicref keys="1-example" href="1-example.dita"/>
        <topicref keys="1-reference" href="1-reference.dita"/>
      </topicref>
    </map>
    ```

    Without needing to make any changes to the content, author two's topic reference now resolves to the `1-example.dita` topic.


**Parent topic:**[Examples of keys](../../archSpec/base/examples-of-keys.md)

