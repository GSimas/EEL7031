// Programa que entra com o numero de termos da sequencia Fibonacci

/**************************************************************/
/*  Computacao Cientifica - EEL 7021
/*  Grupo 4B
/*         Julio Boing Neto        Matricula:1110715
/*         Edilberto Costa Neto     Matricula:11103504
/*         Exercicio 3
/**************************************************************/

#include <stdlib.h>
#include <stdio.h>
#include <math.h>

main()
{
int incre=0, t0=0, t1=1, z; 
printf ("Entre com o numero de termos\t");
scanf ("%d", &z);
if (z%2==1)
{ while (incre<z)
{
printf ("%d\n", t0);
t0=t0+t1;
if (incre==z/2)
{break;}
printf("%d\n", t1);
t1=t1+t0;
incre++;}}
else
{
while (incre<z/2)
{
printf ("%d\n", t0);
t0=t0+t1;
printf("%d\n", t1);
t1=t1+t0;
incre++;}}
system ("pause");
}
