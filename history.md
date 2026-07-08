---
layout: site.njk
title: 'History of DITA'
---

From an internal IBM authoring practice to an OASIS open standard used across the world.

## Before DITA

DITA’s ideas reach back further than 2001. IBM had long used GML, its own precursor to SGML, in
addition to SGML itself for documentation, but by the 1990s its many divisions relied on locally
developed tools and inconsistent processes, with little reuse of content across products or
delivery formats. In the late 1980s and early 1990s, IBM designed a single SGML vocabulary, later
called IBMIDDoc, to replace BookMaster, the GML application used for most of IBM’s product
documentation at the time. That work adapted _architectural forms_, a mechanism from the HyTime
standard, to let individual IBM product groups extend and customize the vocabulary locally without
breaking interchange between them.

IBM began adopting XML for documentation in 1998, and by January 2000 an internal workgroup report
had made the case for a topic-based architecture. A cross-company workgroup spanning IBM, Lotus,
and Tivoli teams then developed a topic typing scheme—organizing content into concept, task, and
reference topics—along with a specialization mechanism to reconcile generic and specialized
content models, reaching a working demonstration by late 2000. IBM piloted the emerging approach
on the documentation for IBM WebSphere Application Server before rolling it out more broadly,
continuing to adapt IBMIDDoc’s modularity and extensibility ideas into what would become DITA’s
specialization mechanism.

{# Print source: Eliot Kimber, "DITA for Practitioners" (XML Press) #}
[ditawriter1]: https://www.ditawriter.com/don-day-and-michael-priestley-on-the-beginnings-of-dita-part-1/
[ditawriter2]: https://www.ditawriter.com/don-day-and-michael-priestly-on-the-beginnings-of-dita-part-2/

## Origins at IBM

[coverpages]: https://xml.coverpages.org/dita.html
[coverpages-2001]: https://xml.coverpages.org/ni2001-03-16-a.html

What would become DITA grew out of IBM’s internal efforts to make large-scale software and
hardware documentation easier to write, reuse, and translate. Rather than producing whole books or
manuals as single documents, IBM’s technical writers were already organizing content into small,
topic-sized pieces. IBM formalized that practice into an XML vocabulary and a processing model
that other organizations could adopt, calling it DITA—a name chosen to capture Darwin (evolution
through specialization), Information Typing, and Architecture. Once OASIS took over development of the
language, this original, pre-standard version came to be known by convention as **IBM DITA**,
distinguishing it from the OASIS-developed DITA that followed.

In **March 2001**, IBM published the core DTD and XML Schema grammar files for IBM DITA, along
with articles describing the architecture on IBM developerWorks, making it
publicly available outside the company for the first time. There was no formal specification
yet—that came later, once OASIS took on the language.

[developerworks1]: https://web.archive.org/web/20010627055409/http://www-106.ibm.com/developerworks/xml/library/x-dita1/
[developerworks2]: https://web.archive.org/web/20010630222900/http://www-106.ibm.com/developerworks/xml/library/x-dita2/
[developerworks3]: https://web.archive.org/web/20040222230545/http://www-106.ibm.com/developerworks/xml/library/x-dita3/
[developerworks6]: https://web.archive.org/web/20051125214806/http://www-128.ibm.com/developerworks/xml/library/x-dita6/
[developerworks6-downloads]: https://web.archive.org/web/20031017222717/http://www-106.ibm.com/developerworks/xml/library/x-dita6/x-dita_downloads.html

## Becoming an OASIS Standard

[coverpages-2004-tc]: https://xml.coverpages.org/ni2004-03-29-b.html
[oasis-pr-dita10]: https://www.oasis-open.org/news/pr/members-approve-dita-as-oasis-standard/

IBM transferred DITA to OASIS in **March 2004**, with other organizations, including Arbortext,
Innodata Isogen, and Nokia, joining the proposal for a new technical committee to take over
stewardship of the language. The [OASIS DITA Technical Committee]
was formally chartered the following month, in **April 2004**. IBM’s own internal approvals for
the contribution ran for about a year, in parallel with the Technical Committee’s early
standardization work, and DITA **1.0**—based closely on the IBM DITA architecture—was approved as
an OASIS Standard on **June 1, 2005**.

[OASIS DITA Technical Committee]: https://www.oasis-open.org/committees/tc_home.php?wg_abbrev=dita

Since then, the language has been maintained entirely through the OASIS standards process, with
releases shaped by public review and consensus among vendors, enterprises, and individual
practitioners rather than any single company.

## Release Timeline

[wikipedia-dita]: https://en.wikipedia.org/wiki/Darwin_Information_Typing_Architecture
[lwdita-v1]: https://docs.oasis-open.org/dita/LwDITA/v1.0/LwDITA-v1.0.html

- **March 2001**—IBM publishes the core DTD and XML Schema grammar files for IBM DITA, along with
  articles describing the architecture.
- **March 2004**—IBM transfers DITA to OASIS.
- **April 2004**—The OASIS DITA Technical Committee is formally chartered.
- **June 1, 2005**—DITA 1.0 is approved as an OASIS Standard, carrying over the IBM DITA
  architecture largely without modification.
- **August 2007**—DITA 1.1 adds the bookmap specialization for book-length publications and
  formalizes DITAVAL filtering syntax for conditional content.
- **December 2010**—DITA 1.2 introduces keys for indirect addressing, expanded glossary support,
  and new specializations for machine industry and learning and training content.
- **December 2015**—DITA 1.3 reorganizes the specification into three packages (Base, Technical
  Content, and All-Inclusive), and adds troubleshooting topics, scoped keys, and support for
  MathML and SVG.
- **October 2016**—DITA 1.3 Errata 01 is approved.
- **June 2018**—DITA 1.3 Errata 02 is approved.
- **October 2018**—The DITA Technical Committee publishes _Lightweight DITA: An Introduction_,
  describing XDITA, HDITA, and MDITA as lower-barrier-to-entry authoring formats that still
  produce standard DITA content.
- **2017–present**—Work begins on DITA 2.0, a major revision that streamlines the language by
  removing rarely used elements, simplifying processing rules, and clarifying long-standing
  ambiguities. Working drafts of DITA 2.0 and DITA for Technical Communication 2.0 are published
  for public review as the Technical Committee refines the specification.

The current state of that work is available as the
[DITA 2.0 draft](/dita/resources/oasis-cover.html),
[DITA Technical Communication 2.0 draft](/dita-techcomm/resources/oasis-cover.html), and
[LwDITA draft](/lwdita/resources/oasis-cover.html) hosted on this site, with the full release
history of earlier, approved versions on the [Specifications](/specifications) page.

## Why the History Matters

Two decades of incremental, consensus-driven evolution are part of what makes DITA a safe
long-term bet for content strategy. Each release has been backward-compatible where possible and
driven by real implementation experience from OASIS member organizations, rather than the roadmap
of a single vendor or tool.
