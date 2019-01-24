#!/usr/bin/env python

import sys
import os

pName = sys.argv[1]

pStruct = ["asset", "config", "doc", "edit", "in", "out", "shot"]
assetStruct = ["char", "shader"]
configStruct = ["ocio", "thumbnail"]
docStruct = ["concept"]

projPath = "/project/" + pName



os.mkdir(projPath)
for i in pStruct:
	os.mkdir(projPath  + "/" + i)
	subPath = projPath +"/" + i
	if i == "asset":
		for j in assetStruct:
			os.mkdir(subPath +"/" + j)

	elif i == "config":
		for j in configStruct:
			os.mkdir(subPath +"/" + j)

	elif i == "doc":
		for j in docStruct:
			os.mkdir(subPath +"/" + j)
