************************
Arto's Project Templates
************************

C++ (Autotools)
===============

TODO

C++ (Header-only)
=================

TODO

Nim
===

TODO

OCaml
=====

Instructions
------------

- Edit META.in to define package/subpackage hierarchy, if needed.
- Edit Makefile to correct $PACKAGE_NAME and $PACKAGE_TARNAME.
- Rename foobar.install to $PACKAGE_NAME.install.
- Edit $PACKAGE_NAME.install to replace "foobar" with $PACKAGE_NAME.
- Rename foobar.opam to $PACKAGE_NAME.opam.
- Edit $PACKAGE_NAME.opam to replace "foobar" with $PACKAGE_NAME,
  correct project links, and define package dependencies.
- Rename src/foobar.{ml,mli} to src/$PACKAGE_NAME.{ml,mli}.

Workflow
--------

::

   $ opam pin add foobar . --no-action
   $ opam uninstall foobar
   $ opam install foobar --verbose

References
----------

* https://opam.ocaml.org/doc/Packaging.html
* https://opam.ocaml.org/doc/Manual.html

Ruby
====

TODO
