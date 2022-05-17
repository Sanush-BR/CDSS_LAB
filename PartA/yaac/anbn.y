%{
#include<stdio.h>
#include<stdlib.h>
int flag = 0;
%}
%token A B
%%
str :s '\n' {flag = 1;}
s:A s B
 |;
%%
int main()
{
printf("Enter the string : ");
yyparse();
if(flag==1)
printf("Valid string.....!");
return 1;
}
int yyerror()
{
printf("Invalid String....!");
exit(0);
}
