AM_CPPFLAGS = -I$(top_srcdir)/lib -I$(top_srcdir)/src -iquote $(srcdir)
AM_CXXFLAGS = -Wall -Wextra -pipe
AM_LDFLAGS  =
LDADD       = $(top_srcdir)/src/foobar/libfoobar.la

check_PROGRAMS = \
  check_feature  \
  check_module   \
  check_version

TESTS = $(check_PROGRAMS)

AM_DEFAULT_SOURCE_EXT = .cc
