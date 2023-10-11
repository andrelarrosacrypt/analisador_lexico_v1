%{
	#include <stdio.h>	
%}

id		[a-zA-Z][a-zA-Z0-9_]*
num 	["+"-]?[0-9]+[,]?[0-9]*
outro	.

%%
{id}	{printf("Identificador\n");}
{num}	{printf("Numero\n");}
{outro}	{printf("Outro\n");}
%%

int yywrap();

main(){
	yylex();
}

int yywrap(){
	return 1;
}