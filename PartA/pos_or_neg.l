%{
#include<stdio.h>
int posinte = 0,posdeci = 0,neginte = 0,negdeci = 0;
%}
%%
[+]?[0-9]+[.][0-9]+ {posdeci += 1;}
[+]?[0-9]+ {posinte+=1;}
[-][0-9]+ {neginte += 1;}
[-][0-9]+[.][0-9]+ {negdeci += 1;}
%%
int yywrap(void) {return 1;}
int main(){
yyin = fopen("pos_or_neg.txt","r");
yylex();
printf("no of pos inte : %d \t no of pos deci : %d \t no of neg inte : %d \t no of neg deci : %d \n",posinte,posdeci,neginte,negdeci);

return 1;
}
