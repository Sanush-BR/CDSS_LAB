%{
#include<stdio.h>
int valid = 0,inval = 0;
%}
%%
[a-zA-Z_][a-zA-Z0-9_]* {valid++;}
[^a-zA-Z_ ][^ ]* {inval++;}
[a-zA-Z_][a-zA-Z_0-9]*[^A-Za-z0-9_ ][A-Za-z0-9_]* {inval++;}
%%
int yywrap(void) {return 1;}
int main(){
yyin = fopen("identifier.txt","r");
yylex();
printf("Invalid identifiers %d \n",inval);
printf("Valid identifiers %d \n",valid);
return 1;
}
