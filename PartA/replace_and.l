%{
#include<stdio.h>
int a = 0;
%}
%%
[ ] {}
" and " {a++; fprintf(yyout,"AND");}
%%
int yywrap(void) {return 1;}
int main(){
yyin = fopen("replace_and.txt","r");
yyout = fopen("replaced_and.txt","w");
yylex();
printf("total no of changes : %d",a);
return 1;
}
