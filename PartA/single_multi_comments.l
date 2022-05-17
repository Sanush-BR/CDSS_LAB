%{
#include<stdio.h>
int multi = 0,single = 0;
%}
%%
"//".* {single++;}
"/*"[^*/]*"*/" {multi++;} 
%%
int yywrap(void){return 1;}
int main(){
yyin = fopen("single_multi_ip.c","r");
yyout = fopen("single_multi_op.c","w");
yylex();
printf("total number of single line comments: %d \n total number of multi line comments: %d",single,multi);
return 1;
}
