************************
Arto's Project Templates
************************

These are my coding project templates for the `programming languages
<http://ar.to/notes/programming>`__ I most frequently work with and publish
open-source projects in.

C++ (Autotools)
===============

TODO

C++ (Header-only)
=================

TODO

Common Lisp
===========

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
- Rename foobar.install to $PACKAGE_TARNAME.install.
- Edit $PACKAGE_TARNAME.install to replace "foobar" with $PACKAGE_TARNAME.
- Rename foobar.opam to $PACKAGE_TARNAME.opam.
- Edit $PACKAGE_TARNAME.opam to replace "foobar" with $PACKAGE_TARNAME,
  correct project links, and define package dependencies.
- Rename src/foobar.{ml,mli} to src/$PACKAGE_TARNAME.{ml,mli}.

::

   $ export PACKAGE_TARNAME=barfoo
   $ sed -e "s:foobar:$PACKAGE_TARNAME:g" -i '' Makefile
   $ git mv foobar.install $PACKAGE_TARNAME.install
   $ sed -e "s:foobar:$PACKAGE_TARNAME:g" -i '' $PACKAGE_TARNAME.install
   $ git mv foobar.opam $PACKAGE_TARNAME.opam
   $ sed -e "s:foobar:$PACKAGE_TARNAME:g" -i '' $PACKAGE_TARNAME.opam
   $ git mv src/foobar.ml src/$PACKAGE_TARNAME.ml
   $ git mv src/foobar.mli src/$PACKAGE_TARNAME.mli

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

Python
======

TODO

Ruby
====

TODO

Rust
====

TODO
