%{
#include<y.tab.h
extern int yyval;
%}
%%
[0-9]+ {yyval = atoi(yytext)}
