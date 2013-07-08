INTRODUCTION
           TinySearch is a simple full-text search engine written by c++ language.  
it is so simple that maybe it is hard to used in your project now .i just write it because
i want to pratice my c++ and to try to write a small full-text search engine. if you
 like,you can modify it,and you can use it  in your project.and i'm happy to see you do that!
and i will continue to work on it too,meybe some day later,it can easy used in your project.

ABOUT ME
         i'm a software engineer in beijing, china.i use java or javascript on my job,and i like
c++ too.you can contact me by email if you like,my  email is: luyongfugx@163.com.

WHAT TinySearch can do?
           TinySearch is a simple full-text search engine.
           it is simple,so it just provide base full-text search function.
	for example:

           create index file for you data.

          provide search api to you ,so you can search some data by some keyword.it provide
          SearchAndString and SearchOrString  two method to you, SearchAndString:  the docment
           must have all of the keywords  you provide to the program.SearchOrString: if the docment
           have one of the keywords you provide,it can be fund out.
       
          you can add new data docment to the index file  or delete a data document from the index

ATTENTION
   
        because of i have no time,TinySearch don't provide the delete method,so you can't delete a 	 
       specific document now  ( i will do it next step)..
        
       I run it on the linux,and the charset is utf-8 now ,if you want to use it for gbk,you meybe have to 
       change the  "seg/CHzSeg.cpp", modify CHA_LENGTH to "2".

how to use it:

       just make clean,and then make. and run the ./Search,you can see the simple,the main function is in the Search.cpp.


good  luck!
and  if you meet some problem or want to discuss something with me,just email to me(luyongufugx@163.com)



