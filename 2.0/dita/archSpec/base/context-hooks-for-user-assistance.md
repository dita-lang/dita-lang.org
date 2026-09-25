---
author: OASIS DITA Technical Committee
---

# Context hooks for user assistance

Context hook information can be specified in the `<resourceid>` element in a DITA map or DITA topic. This enables processors to generate the support files that are required to integrate the user assistance with a specific application.

Context hooks are identifiers that associate a part of the user interface with the location of a help topic. Context hooks can be direct links to URIs, but more often they are indirect links, such as numeric context identifiers and context strings, that can processed into external resource files. These external resource and mapping files are then used directly by context-sensitive help systems and other downstream applications.

Context hook information is defined within DITA topics and DITA maps through attributes of the `<resourceid>` element.

Context hooks can define either one-to-one or one-to-many relationships between user interface controls and target help content.

**Parent topic:**[DITA addressing](../../archSpec/base/ditaaddressing.md)

