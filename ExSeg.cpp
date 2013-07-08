#include "store/IndexOutput.h"
#include "store/IndexInput.h"
#include "document/Document.h"
#include "writer/IndexWriter.h"
#include "reader/IndexReader.h"
#include "seg/Dict.h"
#include "seg/CHzSeg.h"
#include  <stdio.h>  
#include <string>
#include <map>
#include   <iostream>  
using namespace std;
CDict iDict;
int main(int argc, char* argv[]){
//	CHzSeg iHzSeg; 
//	std::string line("中国,上海北,海北海 seg tt 333");
//	iHzSeg.SegmentSentenceMM(iDict,line); 
//	for(std::map<std::string,int>::iterator it=iHzSeg.termMap.begin();it!=iHzSeg.termMap.end();it++){
//		cout << it->first<<":" <<it->second<< endl; 
//	}
    char buffer[20];
    int  i = 3445;   
    char temp[64];
 //  itoa( i, buffer, 10 );
    //string s(buffer);
   
    sprintf(temp,"%d",12);
    std::string s(temp);
   cout<<s<<endl; 
}
