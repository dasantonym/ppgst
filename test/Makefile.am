# $ Id: $

# location where plug-in will be installed
ifeq ($(UNAME), Darwin)
	plugindir= $(libdir)/gstreamer-@GST_MAJORMINOR@
else
	plugindir= $(libdir)/@host_cpu@-@host_os@/gstreamer-@GST_MAJORMINOR@
endif

NULL = 
MAINTAINERCLEANFILES = Makefile.in

EXTRA_DIST = \
	$(NULL)

plugin_LTLIBRARIES = libppgsttest.la

libppgsttest_la_SOURCES = \
	plugin.cpp \
	wProducerTest.cpp \
	$(NULL)

libppgsttest_la_CXXFLAGS = $(PPGST_CFLAGS)
libppgsttest_la_LIBADD = $(PPGST_LIBS)

noinst_HEADERS = \
	wInplaceTest.h \
	wOutofplaceTest.h \
	wTransformTest.h \
	wProducerTest.h \
	wDataTest.h \
	$(NULL)
