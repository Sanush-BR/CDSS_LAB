%{
#include<stdio.h>
int v = 0,c = 0;
%}
%%
[aAeEiIoOuU] {v++;}
[a-zA-Z] {c++;}
%%
int yywrap() {}
int main(){
yyin = fopen("vowel_con.txt","r");
yylex();
printf("vowels: %d \n consonents: %d\n",v,c);
return 0;
}
