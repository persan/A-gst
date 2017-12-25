#!/usr/bin/env python

import re
import glob

def fixFile(path):
    print path
    with open(path) as inf:
        buffer = inf.read().split("\n")
    types = []
    for line in buffer:
        matches = re.match(r"^\s+type u_(\S+) is record.*", line)
        if matches:
            types.append(matches.group(1))
    for i in range(0, len(buffer)):
        for t in types:
            buffer[i] = buffer[i].replace("type u_%s;" % t,
                                          "type %s;" % t)\
                                 .replace("type u_%s " % t,
                                          "type %s " % t)\
                                 .replace("pragma Convention (C_Pass_By_Copy, u_%s);" % t,
                                          "pragma Convention (C_Pass_By_Copy, %s);" % t)\
                                 .replace("subtype %s is u_%s;" % (t, t),
                                          "--subtype %s is u_%s;" % (t, t))
    with open(path, "w") as outf:
        outf.write("\n".join(buffer))
for i in glob.glob("src/gen/*.ads"):
    fixFile(i)
