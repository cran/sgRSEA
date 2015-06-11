#!/usr/bin/python
# programmer : bbc
# usage:

import sys

def fqCount(fq,seqLen,trimStart,trimEnd):
	trimStart = max(1,trimStart) - 1 #change to 0-index
	trimEnd = min(seqLen,trimEnd) 
	fqfile = open(fq,"r+")
	file_buf = fqfile.readlines()
	seqDic = {}
	i = 0
	count = 0

	while i < len(file_buf):
		count += 1
		if count % 5000000==0:
			print >> sys.stderr,"processed", count
		if file_buf[i][0]=="@" and file_buf[i+2][0]=="+": # Make sure this is a fastq record
			seq = file_buf[i+1][trimStart:trimEnd]
			if not seqDic.has_key(seq):
				seqDic[seq] = 0
			seqDic[seq] += 1
			i += 4
		else:
			i += 1
	return seqDic

def sgCountFromFastq(fqInfo,annotation,seqLen,output_prefix):
	try:
		fqinfo = open(fqInfo,"r+")
		annofile = open(annotation,"r+")
	except IOError,message:
		print >> sys.stderr, "Cannot open files.",message
		sys.exit(1)
	else:
		fileheader = annofile.readline().rstrip().split("\t")
		fqcountdicList = []
		
		fqinfo.readline()
		for row in fqinfo:
			row_item = row.rstrip().split("\t")
			fileheader.append(row_item[1])
			print >> sys.stderr,"Now start to process",row_item[1]
			fqcountdicList.append(fqCount(row_item[0],seqLen,int(row_item[2]),int(row_item[3])))

		#combine all the count list
		result = []
		result.append(fileheader)
		for anno in annofile:
			annoitem = anno.rstrip().split("\t")
			for index in range(len(fqcountdicList)):
				if fqcountdicList[index].has_key(annoitem[2]):
					annoitem.append(str(fqcountdicList[index][annoitem[2]]))
				else:
					annoitem.append(str(0))
			result.append(annoitem)

		outfile = open(output_prefix+"_count.txt","w")
		for record in result:
			record.pop(2)
			print >> outfile, "\t".join(record)
		outfile.close()
		return("Finished")

if __name__=="__main__":
	sgCountFromFastq(sys.argv[1],sys.argv[2],int(sys.argv[3]),sys.argv[4])
