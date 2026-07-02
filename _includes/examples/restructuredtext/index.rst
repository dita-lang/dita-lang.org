**************
Document Title
**************

Section title
=============

A paragraph with **bold** and *italic* text.
An external link to `Eclipse <https://eclipse.org>`_.
A reusable link to `GitLab`_.

.. image:: /images/an-image.png
   :height: 600
   :width: 800
   :alt: An image

Subsection title
----------------

* Unordered list item

  * Nest items by aligning marker with text of parent item

* Another unordered list item

.. note:: One of two supported admonition block types.

Sub-subsection title
^^^^^^^^^^^^^^^^^^^^

::

  Preformatted text must be indented by two spaces and follow a text block that ends with the :: marker.

The following source code block contains a Ruby function named ``hello`` that prints "Hello, World!".

.. code-block:: ruby

   def hello name = 'World'
     puts "Hello, #{name}!"
   end

.. _GitLab: https://gitlab.eclipse.org
