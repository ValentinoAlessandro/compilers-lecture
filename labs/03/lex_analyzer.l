%{
#include <stdio.h>
%}


%%
"i"		{printf("int");}
"f" 		{printf("float");}
"p"		{printf("print");}
[0-9]+\.[0-9]+	{printf("fnum");}
[0-9]+		{printf("inum");}
[a-zA-Z]*	{printf("id");}
"="		{printf("assign");}
"-"		{printf("minus");}
"+"		{printf("plus");}
"*"		{printf("mult");}
"/"		{printf("div");}
"\n"		{printf("\n");}
\/\/.*;

%%

int main(){
	yylex();
	return 0;
}

int yywrap(){
	return 1;
}
