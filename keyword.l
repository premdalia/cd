%{
    
%}
%%
"if"|"else"|"int"|"while" {printf("Its is keyword %s",yytext);}
[_a-zA-Z][_a-zA-Z0-9]*  {printf("This is identifier %s",yytext);}
[0-9]+ {printf("This is constant");}
"="|"<"|">"|">="|"<=" {printf("This is relational operaotr %s",yytext);}
\n {return 0;}
%%
int yywrap(){}
int main()
{
    yylex();
    return 0;
}