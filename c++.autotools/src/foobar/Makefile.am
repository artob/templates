AM_CPPFLAGS     = -I$(top_srcdir)/lib -I$(top_srcdir)/src -iquote $(srcdir)
AM_CXXFLAGS     = -Wall -Wextra -pipe
AM_LDFLAGS      =
LDADD           = libfoobar.la $(top_srcdir)/lib/libcompat.a
lib_LTLIBRARIES = libfoobar.la

libfoobar_la_SOURCES =    \
  feature.cc              \
  module.cc               \
  version.cc

base_pkgincludedir = $(includedir)/foobar

base_pkginclude_HEADERS = \
  feature.h               \
  module.h                \
  version.h
