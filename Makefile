


all:

compile:

clean:
	git clean -xdf
install:

test:

tag:

#-------------------------------------------------------------------------------
# Only used to generate the initial lowlevel bindings.
#-------------------------------------------------------------------------------


CFLAGS=$(shell /usr/bin/pkg-config gstreamer-0.10 --cflags) -DGST_USE_UNSTABLE_API
CFLAGS+=-Wno-literal-suffix 
CFLAGS+=-fdump-ada-spec -C -fada-spec-parent=GStreamer.GST_Low_Level 
Initial_Code_Generation:
	rm -rf .gen; mkdir .gen
	echo "extern \"C\" {" >.gen/gen.cc
	cd /usr/include/gstreamer-0.10; find -name "*.h" | grep -v -e vdpau/ -e pygst | sed -e "s-^./-#include <-" -e "s-\.h-.h>-" >>${CURDIR}/.gen/gen.cc
	echo "" >>.gen/gen.cc
	echo "} }" >>.gen/gen.cc
	cd .gen; gcc ${CFLAGS} -c gen.cc
	rm -rf src/gen
	mkdir -p src/gen
	cp  .gen/*gstreamer_0_10_gst_*.ads src/gen
	sed "s!/usr/include/gstreamer-0.10/!!g" src/gen/*.ads -i
	bin/patch_generated_sources.py
	bin/fix_record_renames.py
	gprbuild -p -j0 gstreamer.gpr -k
