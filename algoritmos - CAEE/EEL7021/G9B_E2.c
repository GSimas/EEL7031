// função que define se dois numeros são multiplos um do outro

/**************************************************************/
/*  Computacao Cientifica - EEL 7021
/*  Grupo 9B
/*         Bruno Luiz da Silva		Matricula:11103495
/*         Vinícius Bernardi		Matricula:11100737
/*         Exercico 2
/**************************************************************/


#include <stdlib.h>
#include <stdio.h>

void multiplo (int,int);

main()
{
int n1=0,n2;
int final; // variavel que será utilizada para dar continuidade ao programa

printf("***Este programa retorna 1 se dois numeros sao multiplos e 0 caso n forem***\n");

while (1<2) // condição verdadeira qualquer ara manter o loop;
{
printf("digite dois numeros quaisquer\n\n");
scanf("%d%d",&n1,&n2); // entrada dos dois números que serão comparados
multiplo(n1,n2); // retorna o valor da função;

printf("para continuar digite qualquer numero, para finalizar digite 0 =");
scanf ("%d",&final); // atribui um valor para o final.
if(final == 0) // caso for 0, como indicado, o programa entra no if
break; // quando o valor logico é zero o break finaliza o loop

}

printf("o programa foi finalizado\n");
system ("pause");
}

void multiplo (int x, int y)
{
int k;
k = y%x; // compara de são multiplos
if (k==0)
printf("Multiplo\n"); // caso sejam multiplos
if (k!=0)
printf("Nao-multiplo\n"); // caso não sejam multiplos
}
