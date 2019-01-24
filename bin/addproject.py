#!/usr/bin/env python

import sys
import os

pName = sys.argv[1]

pStruct = ["asset", "config", "doc", "edit", "in", "out", "shot"]
assetStruct = ["char", "shader"]
configStruct = ["ocio", "thumbnail"]
docStruct = ["concept"]

projPath = "/project/" + pName



os.mkdir(path)
for i in pStruct:
	os.mkdir(path  + "/" + i)
	if i == "asset":
		for j in assetStruct:
			os.mkdir("/project/" + pName + "/" + i +"/" + j)

	elif i == "config":
		for j in configStruct:
			os.mkdir("/project/" + pName + "/" + i +"/" + j)
			
	elif i == "doc":
		for j in docStruct:
			os.mkdir("/project/" + pName + "/" + i +"/" + j)
