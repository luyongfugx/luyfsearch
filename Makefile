OBJECTS=Search.o Document.o IndexInput.o IndexOutput.o IndexWriter.o IndexReader.o CHzSeg.o Dict.o HitDoc.o SegmentInfos.o IndexMerge.o PriQueue.o  IndexSearch.o
CUR_DIR = $(shell pwd)
SRC_DIR=document
INCLUDE= -I/usr/local/include  -I/usr/include
LIB= -L/usr/local/lib/ -L/usr/lib
CC= cc
CCFLAG=-c -g

all:Search ExSeg
	   
Search: $(OBJECTS)
	g++ -o   Search $(OBJECTS) $(INCLUDE) $(LIB)
	
ExSeg:ExSeg.o
	g++ -o   ExSeg CHzSeg.o Dict.o ExSeg.o  $(INCLUDE) $(LIB)
   
%.o : %.cpp
	$(CC)  $(CCFLAG) $<
	
PriQueue.o:search/PriQueue.h
	cc -c -g   search/PriQueue.cpp $(INCLUDE) $(LIB) 
 IndexMerge.o:merge/IndexMerge.h	
		cc -c -g   merge/IndexMerge.cpp  $(INCLUDE) $(LIB) 	
SegmentInfos.o:merge/SegmentInfos.h
		cc -c -g   merge/SegmentInfos.cpp  $(INCLUDE) $(LIB) 
	
Document.o:document/Document.h
	cc -c -g   document/Document.cpp $(INCLUDE) $(LIB) 
	
IndexSearch.o:search/IndexSearch.h
	cc -c -g   search/IndexSearch.cpp $(INCLUDE) $(LIB) 
	
IndexInput.o:store/IndexInput.h
	cc -c -g   store/IndexInput.cpp $(INCLUDE) $(LIB) 

IndexOutput.o:store/IndexOutput.h
	cc -c -g   store/IndexOutput.cpp $(INCLUDE) $(LIB) 
	
IndexWriter.o:writer/IndexWriter.h
	cc -c -g   writer/IndexWriter.cpp $(INCLUDE) $(LIB) 	

IndexReader.o:reader/IndexReader.h
	cc -c -g   reader/IndexReader.cpp $(INCLUDE) $(LIB) 
	
HitDoc.o:reader/HitDoc.h
	cc -c -g   reader/HitDoc.cpp $(INCLUDE) $(LIB) 
	
CHzSeg.o:seg/CHzSeg.h
	cc -c -g   seg/CHzSeg.cpp $(INCLUDE) $(LIB) 	
Dict.o:seg/Dict.h
	cc -c -g   seg/Dict.cpp $(INCLUDE) $(LIB) 	


clean:
	rm -fr Search	
	rm -fr ExSeg
	rm -fr *.o		
