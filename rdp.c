// E->TE'
// E'->+TE' | NULL
// T->FT'
// T'->*FT'|null
// F->(E)|a

#include <stdio.h>
#include <string.h>
void E();
void T();
void Eds();
void Tds();
void F();
int i = 0;
int error = 0;
char input[50];
int main()
{
    printf("Enter string: ");
    scanf("%s", input);
    E();
    if (i==strlen(input) && error == 0)
    {
        printf("accepted");
    }
    else
    {
        printf("rejected");
    }
    return 0;
}

void E()
{

    T();
    Eds();
}

void T()
{
    F();
    Tds();
}

void Eds()
{

    if (input[i] == '+')
    {
        i++;
        T();
        Eds();
    }
}

void Tds()
{
    if (input[i] == '*')
    {
        i++;

        F();
        Tds();
    }
}

void F()
{
    if (input[i] == 'a')
    {

        i++;
    }
    else if (input[i] == '(')
    {
        i++;
        E();
        if (input[i] == ')')
        {
            i++;
        }
        else
        {
            error = 1;
        }
    }
    else
    {
        error = 1;
    }
}