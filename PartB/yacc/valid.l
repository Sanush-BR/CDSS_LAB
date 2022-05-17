%{
#include "y.tab.h" 
%} 

%% [a-zA-z] return L;
[0-9] return D;
%%