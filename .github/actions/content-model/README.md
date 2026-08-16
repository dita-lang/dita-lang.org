# content-model

Helper scripts for the `content-model` GitHub Action (see `action.yml` in
this directory), used to patch generated XML content for dita-lang.org.

## replace_by_attr.py

Replaces an XML element (and its contents), or inserts a fragment right
before it, matched by its `id` attribute value. All other bytes in the file
— including unusual whitespace or quoting in untouched tags — are left
exactly as they were; the file is edited by byte-offset splicing, not by
parsing/reserializing the whole document.

Matching is by `id` value only, regardless of element name. If no element
has a matching `id`, the file is left unchanged (this is not an error). If
multiple elements share the same `id`, the fragment is applied at all of
them.

The `position` argument controls what happens at each match:

- `replace` — replace the matched element and its contents with the fragment.
- `prepend` — insert the fragment immediately before the matched element,
  which is otherwise left untouched.

### Requirements

- Python 3.11+
- [uv](https://docs.astral.sh/uv/)

No third-party dependencies — the script only uses the Python standard
library (`xml.parsers.expat`).

### Setup

```sh
cd .github/actions/content-model
uv sync
```

### Running

```sh
uv run python replace_by_attr.py <file> <id-value> <replace|prepend> <replacement-xml>
```

For example, to replace the element with `id="inheritance"` in
`/foo/bar/baz.xml` with a new `<section>` element:

```sh
uv run python replace_by_attr.py /foo/bar/baz.xml inheritance replace \
  '<section id="inheritance-replacement" foo="bar"/>'
```

Or to insert a note right before that same element instead of replacing it:

```sh
uv run python replace_by_attr.py /foo/bar/baz.xml inheritance prepend \
  '<note type="warning">Deprecated.</note>'
```

The file is modified in place.

### Testing

```sh
uv run python -m unittest discover -v
```
