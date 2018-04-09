PANDOC ?= pandoc
DUNE   ?= jbuilder

PACKAGE :=
VERSION := $(shell cat VERSION)

SOURCES :=

TARGETS := _build/bin/hello.exe

%.html: %.rst
	$(PANDOC) -o $@ -t html5 -s $<

_build/default/bin/hello.exe:
	$(DUNE) build bin/hello.exe

all: build

build: $(TARGETS)

check:
	$(DUNE) runtest

dist:
	@echo "not implemented"; exit 2 # TODO

install:
	@echo "not implemented"; exit 2 # TODO

uninstall:
	@echo "not implemented"; exit 2 # TODO

clean:
	@rm -f *~ $(TARGETS)
	$(DUNE) clean

distclean: clean

mostlyclean: clean

.PHONY: check dist install clean distclean mostlyclean
.SECONDARY:
.SUFFIXES:
