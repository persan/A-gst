


all:

compile:

clean:

install:

test:


#-------------------------------------------------------------------------------
# Only used to benerate the initial lowlevel bindings.
#-------------------------------------------------------------------------------


CFLAGS=$(shell /usr/bin/pkg-config gstreamer-0.10 --cflags) -DGST_USE_UNSTABLE_API
CFLAGS+=-fdump-ada-spec
CFLAGS+=-fada-spec-parent=GST_Low_Level
Initial_Code_Generation:
	rm -rf .gen; mkdir .gen
	cd /usr/include/gstreamer-0.10; find -name "*.h" | grep -v vdpau/ | sed -e "s-^./-#include <-" -e "s-\.h-.h>-" >${CURDIR}/.gen/gen.c
	cd .gen; gcc ${CFLAGS} -c gen.c
	rm -rf src/gen
	mkdir -p src/gen
	cp  .gen/*gstreamer_0_10_gst_*.ads src/gen
	bin/patch_generated_sources.py
	bin/fix_record_renames.py
	gprbuild -p -j0 gstreamer.gpr -k
