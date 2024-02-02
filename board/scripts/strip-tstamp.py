#!/usr/bin/python3
import re
import sys

for line in sys.stdin:
    out = re.sub(r' *\(tstamp [^\)]+\) *', '', line)
    print(out,end="")
