%{
#include<stdio.h>
int comp = 0;
%}
%%
([a-zA-Z]*[ ])*([aA][nN][dD]|[oO][rR]|[Ss][Oo]|[Bb][Uu][Tt])([ ][a-zA-Z]*)* {comp = 1;}
%%
int yywrap(void) {return 1;}
int main(){
yyin = fopen("stmt.txt","r");
yylex();
if(comp == 1) printf("It is compound \n");
else printf("It is simple \n");
return 1;
}
