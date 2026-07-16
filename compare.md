---
layout: site.njk
title: 'How DITA Compares'
---

See how the DITA language stacks up against HTML5, Markdown, AsciiDoc, reStructuredText, and
DocBook.

Every one of these formats can produce readable content. They differ in how much structure,
reuse, and publishing automation they give you once your content grows beyond a handful of
pages.

<div class="table-responsive">
  <table class="table table-bordered table-striped">
    <thead>
      <tr>
        <th scope="col">&nbsp;</th>
        <th scope="col">DITA</th>
        <th scope="col">HTML5</th>
        <th scope="col">Markdown</th>
        <th scope="col">AsciiDoc</th>
        <th scope="col">reStructuredText</th>
        <th scope="col">DocBook</th>
      </tr>
    </thead>
    <tbody>
      <tr>
        <th scope="row">Format</th>
        <td>XML vocabulary</td>
        <td>Markup language</td>
        <td>Plain text, lightweight markup</td>
        <td>Plain text, lightweight markup</td>
        <td>Plain text, lightweight markup</td>
        <td>XML vocabulary</td>
      </tr>
      <tr>
        <th scope="row">Primary role</th>
        <td>Authoring format</td>
        <td>Output format</td>
        <td>Authoring format</td>
        <td>Authoring format</td>
        <td>Authoring format</td>
        <td>Authoring format</td>
      </tr>
      <tr>
        <th scope="row">Content model</th>
        <td>Topic-based (concept, task, reference, troubleshooting), enforced by schema</td>
        <td>Document-based, freeform</td>
        <td>Document-based, freeform</td>
        <td>Document-based, freeform with semantic blocks</td>
        <td>Document-based, freeform with directives</td>
        <td>Document-based (books, chapters, sections), enforced by schema</td>
      </tr>
      <tr>
        <th scope="row">Content reuse</th>
        <td>Content references (conref/keyref), maps for assembly</td>
        <td>None built in</td>
        <td>None built in</td>
        <td>Includes and attributes</td>
        <td>Includes and substitutions</td>
        <td>XInclude and cross-references</td>
      </tr>
      <tr>
        <th scope="row">Conditional publishing</th>
        <td>Built-in filtering and flagging (DITAVAL)</td>
        <td>None built in</td>
        <td>None built in</td>
        <td>Conditional attributes (tool-dependent)</td>
        <td>Tags (tool-dependent)</td>
        <td>Built-in profiling attributes (condition, os, arch)</td>
      </tr>
      <tr>
        <th scope="row">Extensibility</th>
        <td>Formal specialization of elements and attributes</td>
        <td>Custom elements via separate specs</td>
        <td>Flavors and extensions (tool-dependent)</td>
        <td>Custom blocks and macros</td>
        <td>Custom directives and roles</td>
        <td>Customization layers (schema-based)</td>
      </tr>
      <tr>
        <th scope="row">Typical output</th>
        <td>HTML, PDF, EPUB, help systems, mobile, print—via one source</td>
        <td>Web pages (the destination, not a source format)</td>
        <td>HTML, sometimes PDF</td>
        <td>HTML, PDF, EPUB, slides, man pages</td>
        <td>HTML, PDF, EPUB (commonly via Sphinx)</td>
        <td>HTML, PDF, EPUB, man pages</td>
      </tr>
      <tr>
        <th scope="row">Governed by</th>
        <td>OASIS DITA Technical Committee</td>
        <td>WHATWG / W3C</td>
        <td>No formal standard (CommonMark is the closest)</td>
        <td>Eclipse Foundation AsciiDoc Language project</td>
        <td>Docutils project</td>
        <td>Hosted by OASIS; Technical Committee closed in 2024</td>
      </tr>
    </tbody>
  </table>
</div>

{#% include "\_includes/examples/comparison.njk" %#}

{% set dita = { title: "DITA", files: [ "index.dita", "book.ditamap" ] } %}
{% set items = {
markdown: { title: "Markdown", files: [ "index.md" ] },
html5: { title: "HTML5", files: [ "index.html" ] },
asciidoc: { title: "AsciiDoc", files: [ "index.adoc", "book.adoc" ] },
restructuredtext: { title: "reStructuredText", files: [ "index.rst", "book.rst" ] },
docbook: { title: "DocBook", files: [ "index.xml", "book.xml" ] }
} %}
{% for name, item in items %}

## DITA vs. {{ item.title }}

<div class="row" id="{{ name }}">
  <div class="col-sm-6">
    <ul class="nav nav-tabs mb-3" role="tablist">
      {% for file in item.files %}
        <li class="nav-item mr-1">
          <a
            class="nav-link{% if loop.first %} active{% endif %}"
            data-toggle="tab"
            href="#{{ name ~ "-" ~ file | replace(".", "-") }}"
            aria-expanded="{{ loop.first }}"
            aria-controls="{{ name }}"
            role="tab"
          >
            {{ file }}
          </a>
        </li>
      {% endfor %}
    </ul>
    <div class="tab-content">
      {% for file in item.files %}
        <div id="{{ name ~ "-" ~ file | replace(".", "-") }}"
              role="tabpanel"
              class="tab-pane show{% if loop.first %} active{% endif %}"
              aria-labelledby="headingZero"
              data-parent="#{{ name }} ">
{% highlight "md" %}{% include "_includes/examples/" ~ name ~ "/" ~ file %}{% endhighlight %}
        </div>
      {% endfor %}
    </div>
  </div>
  <div class="col-sm-6">
    <ul class="nav nav-tabs mb-3" role="tablist">
      {% for file in dita.files %}
        <li class="nav-item mr-1">
          <a
            class="nav-link{% if loop.first %} active{% endif %}"
            data-toggle="tab"
            href="#{{ name ~ "-" ~ file | replace(".", "-") }}"
            aria-expanded="{{ loop.first }}"
            aria-controls="{{ name }}"
            role="tab"
          >
            {{ file }}
          </a>
        </li>
      {% endfor %}
    </ul>
    <div class="tab-content">
      {% for file in dita.files %}
        <div id="{{ name ~ "-" ~ file | replace(".", "-") }}"
              role="tabpanel"
              class="tab-pane show{% if loop.first %} active{% endif %}"
              aria-labelledby="headingZero"
              data-parent="#{{ name }} ">
{% highlight "xml" %}{% include "_includes/examples/dita/" ~ file  %}{% endhighlight %}
        </div>
      {% endfor %}
    </div>
  </div>
</div>
<p>{% include "_includes/examples/" ~ name ~ "/description.md" %}</p>
{% endfor %}

## Choosing the Right Format

There’s no single correct answer for every project. Lightweight, single-document formats like
Markdown, AsciiDoc, and reStructuredText are often the fastest way to get a small project
documented well. DITA’s more complex features pay off when content needs to be reused across
products, translated into multiple languages, filtered for different audiences, or published to
several formats from one source—the scenarios technical documentation teams hit as they scale.
