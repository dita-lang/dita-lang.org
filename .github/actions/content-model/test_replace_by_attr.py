import unittest

from replace_by_attr import replace_by_attr


class ReplaceByAttrTests(unittest.TestCase):
    def test_replaces_normal_element_and_preserves_surrounding_bytes(self):
        data = (
            b"<root>\n"
            b"  <section\n"
            b"    id ='intro'\n"
            b"        >\n"
            b"    Intro\n"
            b"      content\n"
            b"  </section >\n"
            b'  <section id="inheritance">\n'
            b"    <p>Old contents about inheritance.</p>\n"
            b"  </section>\n"
            b'  <section id="other"/>\n'
            b"</root>\n"
        )
        replacement = b'<topic id="inheritance-topic"><title>Inheritance</title></topic>'

        result = replace_by_attr(data, "id", "inheritance", replacement)

        expected = (
            b"<root>\n"
            b"  <section\n"
            b"    id ='intro'\n"
            b"        >\n"
            b"    Intro\n"
            b"      content\n"
            b"  </section >\n"
            b"  " + replacement + b"\n"
            b'  <section id="other"/>\n'
            b"</root>\n"
        )
        self.assertEqual(result, expected)

    def test_replaces_self_closing_target_and_preserves_following_sibling(self):
        data = (
            b"<root>\n"
            b'  <section id="inheritance"   />\n'
            b'  <section id="keep">unchanged</section>\n'
            b"</root>\n"
        )

        result = replace_by_attr(data, "id", "inheritance", b'<topic id="x"/>')

        expected = (
            b"<root>\n"
            b'  <topic id="x"/>\n'
            b'  <section id="keep">unchanged</section>\n'
            b"</root>\n"
        )
        self.assertEqual(result, expected)

    def test_no_match_returns_data_unchanged(self):
        data = b'<root><section id="other"/></root>'

        result = replace_by_attr(data, "id", "does-not-exist", b"<x/>")

        self.assertEqual(result, data)

    def test_matches_any_element_name_not_just_specific_tag(self):
        data = b'<root><para id="inheritance">text</para></root>'

        result = replace_by_attr(data, "id", "inheritance", b"<topic/>")

        self.assertEqual(result, b"<root><topic/></root>")

    def test_replaces_all_elements_sharing_the_same_id_value(self):
        data = b'<root><a id="dup"/><b id="dup"/></root>'

        result = replace_by_attr(data, "id", "dup", b"<x/>")

        self.assertEqual(result, b"<root><x/><x/></root>")

    def test_unreachable_external_dtd_is_ignored_not_fetched(self):
        # A SYSTEM/PUBLIC identifier pointing at a host and file that don't
        # exist. If Expat ever tried to resolve it, this would hang or raise
        # (no ExternalEntityRefHandler is installed, and there's no network
        # access in tests), rather than just being ignored as expected.
        data = (
            b'<?xml version="1.0"?>\n'
            b'<!DOCTYPE topic PUBLIC "-//OASIS//DTD DITA Topic//EN" '
            b'"http://example.invalid/dtd/topic.dtd">\n'
            b'<topic id="disk_management">\n'
            b'  <section id="inheritance">\n'
            b"    <p>Old contents about inheritance.</p>\n"
            b"  </section>\n"
            b"</topic>\n"
        )

        result = replace_by_attr(data, "id", "inheritance", b'<section id="new"/>')

        expected = (
            b'<?xml version="1.0"?>\n'
            b'<!DOCTYPE topic PUBLIC "-//OASIS//DTD DITA Topic//EN" '
            b'"http://example.invalid/dtd/topic.dtd">\n'
            b'<topic id="disk_management">\n'
            b'  <section id="new"/>\n'
            b"</topic>\n"
        )
        self.assertEqual(result, expected)


if __name__ == "__main__":
    unittest.main()
