// fun��o que define se dois numeros s�o multiplos um do outro

/**************************************************************/
/*  Computacao Cientifica - EEL 7021
/*  Grupo 9B
/*         Bruno Luiz da Silva		Matricula:11103495
/*         Vin�cius Bernardi		Matricula:11100737
/*         Exercico 2
/**************************************************************/


#include <stdlib.h>
#include <stdio.h>

void multiplo (int,int);

main()
{
int n1=0,n2;
int final; // variavel que ser� utilizada para dar continuidade ao programa

printf("***Este programa retorna 1 se dois numeros sao multiplos e 0 caso n forem***\n");

while (1<2) // condi��o verdadeira qualquer ara manter o loop;
{
printf("digite dois numeros quaisquer\n\n");
scanf("%d%d",&n1,&n2); // entrada dos dois n�meros que ser�o comparados
multiplo(n1,n2); // retorna o valor da fun��o;

printf("para continuar digite qualquer numero, para finalizar digite 0 =");
scanf ("%d",&final); // atribui um valor para o final.
if(final == 0) // caso for 0, como indicado, o programa entra no if
break; // quando o valor logico � zero o break finaliza o loop

}

printf("o programa foi finalizado\n");
system ("pause");
}

void multiplo (int x, int y)
{
int k;
k = y%x; // compara de s�o multiplos
if (k==0)
printf("Multiplo\n"); // caso sejam multiplos
if (k!=0)
printf("Nao-multiplo\n"); // caso n�o sejam multiplos
}
