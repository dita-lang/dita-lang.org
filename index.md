---
layout: cover.njk
title: 'DITA'
---

<div class="jumbotron jumbotron-fluid">
  <div class="container">
    <h1 class="display-3 ml-md-4 ml-lg-n2">{{ title }}</h1>
    <p class="lead">Structure your content. Scale your documentation. Deliver everywhere.</p>
    <p>
      Darwin Information Typing Architecture (DITA) is an XML-based open standard for structured
      content and topic-based authoring, helping teams create, reuse, and publish technical
      documentation.
    </p>
  </div>
</div>
<div class="container">
  <div class="row mb-3">
    <div class="col-4">

### Write Once, Publish Everywhere

The DITA language lets you structure content in topic-based modules. DITA-compatible
publishing tools can then generate HTML, PDF, mobile, print, and other formats from that
same set of source files.

</div>
<div class="col-4">

### Built for Scale

From startups to Fortune 500 companies, the DITA language specification provides the
foundation for handling complex documentation projects with thousands of topics, multiple
products, and global translation requirements.

</div>
<div class="col-4">

### Reuse Everything

DITA’s structured markup gives you several ways to write content once and reuse it
elsewhere. Use topic-based authoring to create modular content, content references to pull
in shared information, and conditional text to show different content to different
audiences—all from the same source files.

</div>
</div>
</div>

<div class="container" id="use-cases-section">

### For Technical Writers

**Professional documentation language that adapts to your workflow**

Transform your content creation process with DITA’s topic-based authoring syntax. Focus on
writing while DITA-compatible tools handle the structure, cross-references, and publishing
automation.

- Topic-based writing language that mirrors how users actually consume information
- Built-in syntax for cross-references and linking
- Content reuse markup that eliminates copy-paste errors
- Semantic structure that enables professional publishing

### For Product Teams

**Documentation language that scales with your product**

Keep your docs in sync with rapid product development. DITA’s modular markup approach means
updates in one place propagate everywhere they’re needed when processed by DITA tools.

- Single-source content markup for multiple products and releases
- Conditional publishing syntax for different audiences
- Language designed for integration with development workflows
- Structured approach that ensures consistency across all documentation

### For Enterprise

**A content language for large-scale documentation programs**

For organizations managing documentation across many products and teams, the DITA language
specification offers a governance model, workflow foundation, and scalability suited to that
scope.

- Standards-based markup language backed by OASIS
- Language designed for enterprise-grade content management workflows
- Built-in translation and localization support
- Extensible language architecture for custom requirements

</div>

<div class="container">

### Why Structure Content

As documentation grows across products, teams, and languages, keeping it consistent and current
takes real, ongoing effort. DITA offers one way to manage that complexity: it treats content as
structured data rather than free-form text, which supports content reuse, automated publishing
workflows, and content that can adapt as your needs change.

A key part of that structure is topic-based authoring: content is organized into self-contained
topics that each focus on a single subject, such as a concept, task, or reference, rather than
one continuous document. Because a topic doesn’t depend on the narrative around it, it can be
reused, reordered, and assembled into different documents and outputs, which is what makes
DITA’s content reuse and multi-format publishing possible.

</div>

<div class="container">

### Language Features

**Content Reuse** DITA’s content reference syntax lets you reference content
fragments across topics and publications, so an update in one place is reflected wherever that
content is used.

**Conditional Publishing** Built-in markup for creating different versions for
different audiences from the same source. Filter by product, platform, experience level, or any
criteria you define in the language.

**Multiple Output Formats** DITA’s semantic structure supports generating HTML,
PDF, EPUB, mobile apps, and more through compatible publishing tools.

**Extensibility** Adapt DITA to your specific needs through specialization. Create
custom topic types, add industry-specific elements, or extend the language while maintaining
compatibility.

**Translation Support** Built-in language features for localization workflows.
DITA’s structure supports translation memory, multilingual content management, and consistency
across languages.

**Open Standard** DITA is maintained by OASIS as an open, vendor-neutral standard,
so your content isn’t tied to a single vendor’s tools.

</div>

<div class="container" id="comparison">
  <h3 id="compare-dita-to-other-markup-languages">Compare DITA to other markup languages</h3>
  <ul class="nav nav-tabs mb-3" role="tablist">
    <li class="nav-item">
      <a
        class="nav-link active"
        data-toggle="tab"
        href="#markdown"
        aria-expanded="true"
        aria-controls="markdown"
        role="tab"
      >
        Markdown
      </a>
    </li>
    <li class="nav-item">
      <a
        class="nav-link"
        data-toggle="tab"
        href="#html5"
        aria-expanded="false"
        aria-controls="html5"
        role="tab"
      >
        HTML5
      </a>
    </li>
    <li class="nav-item">
      <a
        class="nav-link"
        data-toggle="tab"
        href="#asciidoc"
        aria-expanded="false"
        aria-controls="asciidoc"
        role="tab"
      >
        AsciiDoc
      </a>
    </li>
    <li class="nav-item">
      <a
        class="nav-link"
        data-toggle="tab"
        href="#restructuredtext"
        aria-expanded="false"
        aria-controls="restructuredtext"
        role="tab"
      >
        reStructuredText
      </a>
    </li>
    <li class="nav-item">
      <a
        class="nav-link"
        data-toggle="tab"
        href="#docbook"
        aria-expanded="false"
        aria-controls="docbook"
        role="tab"
      >
        DocBook
      </a>
    </li>
  </ul>
  <div class="tab-content">
    <div
      id="markdown"
      role="tabpanel"
      class="tab-pane show active"
      aria-labelledby="headingZero"
      data-parent="#comparison"
    >
      <div class="row mb-3">
        <div class="col-sm-6">
          <h5>Markdown</h5>
          <code>index.md</code>
{% highlight "md" %}{% include "_includes/examples/markdown/index.md" %}{% endhighlight %}
        </div>
        <div class="col-sm-6">
          <h5>DITA</h5>
          <!--                <ul class="nav nav-pills">-->
          <!--                  <li class="nav-item"><code class="nav-link active">index.dita</code></li>-->
          <!--                  <li class="nav-item"><code class="nav-link">keys.ditamap</code></li>-->
          <!--                </ul>-->
          <code>index.dita</code>
{% highlight "xml" %}{% include "_includes/examples/dita/index.dita" %}{% endhighlight %}
        </div>
      </div>
      <p>
        Markdown’s appeal is its simplicity: a handful of characters produce headings, lists, and
        links. That makes it ideal for READMEs, changelogs, and short-lived content. It has no
        standard mechanism for content reuse, conditional text, or semantic topic types, so large
        documentation sets built in Markdown tend to accumulate inconsistency as they grow. DITA
        addresses that gap directly, with content references and topic types built into the
        language. Through Lightweight DITA, the MDITA format lets writers use familiar Markdown
        syntax while still producing standard DITA content.
      </p>
    </div>
    <div
      id="html5"
      role="tabpanel"
      class="tab-pane"
      aria-labelledby="headingOne"
      data-parent="#comparison"
    >
      <div class="row mb-3">
        <div class="col-sm-6">
          <h5>HTML5</h5>
          <code>index.html</code>
{% highlight "html" %}{% include "_includes/examples/html5/index.html" %}{% endhighlight
          %}
        </div>
        <div class="col-sm-6">
          <h5>DITA</h5>
          <code>index.dita</code>
{% highlight "xml" %}{% include "_includes/examples/dita/index.dita" %}{% endhighlight %}
        </div>
      </div>
      <p>
        HTML5 is the language browsers render, not one people typically author large documentation
        sets in directly. It has no native concept of topics, content reuse, or conditional
        publishing. Those concerns are usually bolted on with a separate content management system.
        With DITA, HTML5 is simply one of several outputs a publishing engine can generate from a
        single set of source topics. That means no second authoring effort is needed to also produce
        PDF, EPUB, or other formats.
      </p>
    </div>
    <div
      id="asciidoc"
      role="tabpanel"
      class="tab-pane"
      aria-labelledby="headingTwo"
      data-parent="#comparison"
    >
      <div class="row mb-3">
        <div class="col-sm-6">
          <h5>AsciiDoc</h5>
          <code>index.adoc</code>
{% highlight "asciidoc" %}{% include "_includes/examples/asciidoc/index.adoc" %}{%
          endhighlight %}
        </div>
        <div class="col-sm-6">
          <h5>DITA</h5>
          <code>index.dita</code>
{% highlight "xml" %}{% include "_includes/examples/dita/index.dita" %}{% endhighlight %}
        </div>
      </div>
      <p>
        AsciiDoc is a plain-text format with includes, attributes, and semantic blocks. Those
        features support meaningful content reuse and conditional text without leaving plain text.
        DITA takes a different approach: formal, schema-validated topic types and a map structure
        assemble content from many independent files. That trade-off—more upfront structure for
        machine-enforced consistency—tends to matter most for large, multi-author, multi-product
        documentation sets.
      </p>
    </div>
    <div
      id="restructuredtext"
      role="tabpanel"
      class="tab-pane"
      aria-labelledby="headingThree"
      data-parent="#comparison"
    >
      <div class="row mb-3">
        <div class="col-sm-6">
          <h5>reStructuredText</h5>
          <code>index.rst</code>
{% highlight "rest" %}{% include "_includes/examples/restructuredtext/index.rst" %}{%
          endhighlight %}
        </div>
        <div class="col-sm-6">
          <h5>DITA</h5>
          <code>index.dita</code>
{% highlight "xml" %}{% include "_includes/examples/dita/index.dita" %}{% endhighlight %}
        </div>
      </div>
      <p>
        reStructuredText, especially paired with Sphinx, is a strong choice for documenting a single
        codebase or project. Directives and roles support structured, cross-referenced technical
        writing. DITA is built for a broader scope, assembling and reusing topics across many
        products, releases, and organizations through maps. Formal specialization lets teams extend
        the vocabulary for their domain while staying interoperable with standard DITA tools. Where
        reStructuredText is closely tied to its surrounding tool ecosystem, DITA’s processing model
        is defined independently of any single publishing engine.
      </p>
    </div>
    <div
      id="docbook"
      role="tabpanel"
      class="tab-pane"
      aria-labelledby="headingFour"
      data-parent="#comparison"
    >
      <div class="row mb-3">
        <div class="col-sm-6">
          <h5>DocBook</h5>
          <code>index.xml</code>
{% highlight "xml" %}{% include "_includes/examples/docbook/index.xml" %}{% endhighlight
          %}
        </div>
        <div class="col-sm-6">
          <h5>DITA</h5>
          <code>index.dita</code>
{% highlight "xml" %}{% include "_includes/examples/dita/index.dita" %}{% endhighlight %}
        </div>
      </div>
      <p>
        DocBook is also a mature XML vocabulary, used for software documentation, books, and Linux
        distribution manuals. It supports modularization through mechanisms like XInclude. It was
        developed under OASIS, but its Technical Committee closed in 2024, so it’s no longer under
        active development. Where DocBook centers on document structures—books, chapters, and
        prefaces—DITA centers on independent topics assembled through maps. Depending on whether
        your content is closer to a single authored volume or spans many products, either structure
        can be a good fit.
      </p>
    </div>
  </div>
</div>
<!---->
<!--<div class="container" id="getting-started-section">-->
<!--  <h3 id="start-your-dita-journey-today">Start Your DITA Journey Today</h3>-->
<!--  <p>-->
<!--    <strong>Learn the Language</strong> New to structured authoring? Our getting started guide walks-->
<!--    you through DITA language concepts with practical examples you can try immediately. [Read the-->
<!--    Language Guide →]-->
<!--  </p>-->
<!--  <p>-->
<!--    <strong>Explore Tools &amp; Implementations</strong> Discover authoring tools, content-->
<!--    management systems, and publishing engines that support the DITA language specification. [Browse-->
<!--    DITA Tools →]-->
<!--  </p>-->
<!--  <p>-->
<!--    <strong>Join the Community</strong> Connect with DITA practitioners worldwide. Ask questions,-->
<!--    share experiences, and learn from teams who’ve successfully adopted the DITA language. [Join-->
<!--    Community →]-->
<!--  </p>-->
<!--</div>-->
<!---->
<!--<div class="container" id="footer-value-proposition">-->
<!--  <h3 id="why-choose-dita">Why Choose DITA?</h3>-->
<!--  <p>-->
<!--    DITA is a structured authoring language designed to scale with your organization, from-->
<!--    single-author projects to global enterprise implementations, providing a semantic foundation for-->
<!--    your content.-->
<!--  </p>-->
<!--  <p>-->
<!--    <strong>Curious whether structured authoring fits your documentation?</strong> [Learn DITA Today-->
<!--    →]-->
<!--  </p>-->
<!--  -->
<!--</div>-->
