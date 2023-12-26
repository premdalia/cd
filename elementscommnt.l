%{
    #include <stdio.h>
%}
%%
\/\/(.)* {}
\/"*"(.\n)* {}
"*"\/ {}
. {fprintf(yyout,"%s",yytext);} 
%%
int yywrap(){}
int main(){
    yyin=fopen("rmcomment.txt","r");
    yyout= fopen("updated.c","w");
    yylex();
    return 0;
}