%{
#include<stdio.h>
int p = 0,s = 0;
%}
%%
"printf" {p++; fprintf(yyout,"readf");}
"scanf" {s++; fprintf(yyout,"writef");}
%%
int yywrap(void) {return 1;}
int main(){
yyin = fopen("printf_scanf.c","r");
yyout = fopen("readf_writef.txt","w");
yylex();
printf("Total printf's %d\n Total scanf's %d\n",p,s);
return 1;
}
