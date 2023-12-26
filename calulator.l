%{
    #include <stdio.h>
    int sum=0;
    int a,b;int flag=0,opflag ;
%}
%%
[0-9]+ { if(flag==0){a = atoi(yytext);}printf("The A is %d",a); digit();flag=1; }
"+" { opflag = 1; printf("The +");}
"-" { opflag = 2; }
"/" { opflag = 3; }
"*" { opflag = 4; }
\n {return 0;}
%%
int yywrap(){}
int digit()
{
    if(flag==1)
    {
        b = atoi(yytext);
        printf("The B is %d",b);
        flag=0;
    }
        switch(opflag)
        {
            case 1: sum = a+b;break;
            case 2: sum = a-b;break;
            case 3: sum = a/b;break;
            case 4: sum = a*b;break;
        }
}
int main()
{
    yylex();
    printf("The sum is %d",sum);
}
