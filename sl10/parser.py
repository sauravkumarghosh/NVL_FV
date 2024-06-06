#!/usr/bin/env python3
#usage command: parser.py <logfilename>
import re
import sys

iFile = open(sys.argv[1], "r")
oFile = open('append_to_rbwrc_init.txt', 'w', newline='')

oFile.write("pusha .*\n")
oFile.write("enabled\n")

for line in iFile:
    if re.search("Rule (.*) fired", line):
        print(line)
        if(re.search('StartState (.*) fired.',line)):
            p1 = re.search('StartState (.*) fired.')
            func=p1.group(1)
            func += "()\n"
            oFile.write(func)
        elif(re.search('Rule (.*?), (.*) fired.',line)):
            p2 = re.search('Rule (.*?), (.*) fired.',line)
            func=p2.group(1)
            func += "("
            list1 = p2.group(2)
            for x in re.findall("\S*:(\S*)",list1):
	            x = x.replace("true","True")
	            x = x.replace("false","False")
	            func += x.replace("__",".")
            func += ")\n"
            oFile.write(func)
        else:
            p3 = re.search('Rule (.*) fired.',line)
            func=p3.group(1)
            func += "()\n"
            oFile.write(func)
