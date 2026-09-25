---
author: OASIS DITA Technical Committee
---

# File naming conventions

The OASIS DITA Technical Committee uses certain conventions for the names of XML grammar files. We suggest using these conventions as a way to facilitate the interchange of grammar files.

-   **Globally unique identifiers**

    Vocabulary modules that are intended for use outside of a narrowly-restricted context should have one or more associated, globally-unique names by which the modules can be referenced without regard to their local storage location. The globally-unique names can be public identifiers, URNs, or absolute URLs.

-   **Document-type shells**

    Document-type shells should be given a name that distinguishes their name, owner, or purpose, for example, `acme-concept.dtd`. The document-type shells that are provided by the DITA Technical Committee typically use the root element of the primary specialization as the basis for the file name. If necessary, a qualifier such as base is prepended to the name of the root element.

-   **Module names**

    For structural modules, the module name should be the element type name of the top-level topic or map type that is defined by the module, such as "topic" or "map".

    For element- or attribute-domain modules, the module name should be a name that reflects the subject domain to which the domain applies, such as "highlight" or "software". Domain module names should be sufficiently unique that they are unlikely to conflict with any other domains.

    In addition, each element- or attribute-domain module has a short name that is used to construct entity names that are used in associated declarations. Modules can also have abbreviated names that further shorten the short name, for example "hi-d" for the "highlight" domain, where "highlight" is the short name and "hi-d" is the abbreviated name.


**Parent topic:**[Coding practices for DITA grammar files](../archSpec/base/coding-requirements.md)

