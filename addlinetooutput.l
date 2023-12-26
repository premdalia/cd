%{
    #include <stdio.h>
    #include <string.h>
    int line=1,word=0;
%}
%%
.* { word=word+yyleng; fprintf(yyout,"%d %s",line++,yytext);}

%%
int yywrap()
{
     {fprintf(yyout,"The Total words are %d",word);}
}
int main()
{
    yyin=fopen("Text1.txt","r");
    yyout=fopen("output.c","w");
    yylex();
    return 0;
}