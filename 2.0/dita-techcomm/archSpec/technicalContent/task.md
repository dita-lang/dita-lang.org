---
author: [OASIS DITA Technical Committee, OASIS DITA Technical Committee]
---

# Task

The OASIS DITA Technical Committee distributes two varieties of task topics: general task and strict task. Both task topics serve the same purpose: to provide users with comprehensive instructions for performing a task. Their content models vary, however.

-   **General task**

    Has a more relaxed content model. It allows `<section>` and `<steps-informal>` inside of the task body; it also allows multiple instances and varying order for the elements that make up the task body.

-   **\(Strict\) task**

    Maintains a strict order and cardinality for elements within the `<taskbody>` content model. The strict task is implemented with a constraint module.


-   **[General task](../../archSpec/technicalContent/dita-generic-task-topic.md)**  
A general task topic answers the "How do I?" question by providing instructions and other necessary information that enables users to complete the task successfully. It has a content model that is more relaxed than that of the strict task.
-   **[Strict task](../../archSpec/technicalContent/dita-task-topic.md)**  
A strict task topic answers the "How do I?" question by providing precise step-by-step instructions and other necessary information that enables users to complete the task successfully.

**Parent topic:**[Topic and map document types](../../archSpec/technicalContent/dita-technicalContent-InformationTypes.md)

