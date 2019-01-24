#! /usr/bin/env python
#coding:utf8
import sys
import os

def addProject(name):
	"""
	프로젝트를 생성하는 함수입니다
	"""
	print name	
if __name__ == "__main__":
	if len(sys.argv) != 2:
		print "How to use:"
		print "$ addproject projectname"
		sys.exit()
	name = sys.argv[1]
	addProject(name)
