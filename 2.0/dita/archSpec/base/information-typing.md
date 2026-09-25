---
author: OASIS DITA Technical Committee
---

# Information typing

Information typing is the practice of identifying types of topics, such as concept, reference, and task, to clearly distinguish between different types of information. Topics that answer different reader questions \(How do I? What is?\) can be categorized with different information types. The base information types provided by DITA specializations \(for example, technical content, machine industry, and learning and training\) provide starter sets of information types that can be adopted immediately by many technical and business-related organizations.

Information typing has a long history of use in the technical documentation field to improve information quality. It is based on extensive research and experience, including Robert Horn's Information Mapping and Hughes Aircraft's STOP \(Sequential Thematic Organization of Proposals\) technique. Note that many DITA topic types are not necessarily closely connected with traditional Information Mapping.

Information typing is a practice designed to keep documentation focused and modular, thus making it clearer to readers, easier to search and navigate, and more suitable for reuse. Classifying information by type helps authors perform the following tasks:

-   Develop new information more consistently
-   Ensure that the correct structure is used for closely related kinds of information \(retrieval-oriented structures like tables for reference information and simple sequences of steps for task information\)
-   Avoid mixing content types, thereby losing reader focus
-   Separate supporting concept and reference information from tasks, so that users can read the supporting information if needed and ignore if it is not needed
-   Eliminate unimportant or redundant detail
-   Identify common and reusable subject matter

DITA currently defines a small set of well-established information types that reflects common practices in certain business domains, for example, technical communication and instruction and assessment. However, the set of possible information types is unbounded. Through the mechanism of specialization, new information types can be defined as specializations of the base topic type \(`<topic>`\) or as refinements of existing topics types, for example, `<concept>`, `<task>`, `<reference>`, or `<learningContent>`.

You need not use any of the currently-defined information types. However, where a currently-defined information type matches the information type of your content, use the currently-defined information type, either directly, or as a base for specialization. For example, for information that is procedural in nature, use the task information type or a specialization of task. Consistent use of established information types helps ensure smooth interchange and interoperability of DITA content.

**Parent topic:**[DITA topics](../../archSpec/base/topicover.md)

