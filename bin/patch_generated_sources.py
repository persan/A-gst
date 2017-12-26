#!/usr/bin/env python
import subprocess
from os.path import *
from glob import glob

# Process all global patching
subprocess.call(["sed", "-f", "sed/all.sed", "-i"] + glob("src/gen/*.ads"))


# Process per file patching
for i in glob.glob("sed/*.sed"):

    tgt = join("src", "gen", splitext(basename(i))[0] + ".ads")
    if exists(tgt):
        subprocess.call(["sed", "-f", i, "-i", tgt])
    elif basename(i) != "all.sed":
        print "%s Does not exist." % tgt
