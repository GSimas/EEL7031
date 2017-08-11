/*Resolve sistemas lineares*/

/**************************************************************/
/*  Computacao Cientifica - EEL 7021
/*  Grupo 9A
/*         Bruno Luiz da Silva		Matricula:11103495
/*         Vinícius Bernardi		Matricula:11100737
/*         Exercicio 5
/**************************************************************/

#include <stdio.h>
#include <stdlib.h>


main(){

float array [3][4],a,p;
float x,y,z;
int i,j;
float sup[1][4];

printf("\n++++Calculadora de Sistemas Lineares 3X3++++\n");
printf("Digite os coeficientes e a resposta de cada equacao\n");
// Este trecho é responsavel por atribuir os valores a matriz
for(i=0; i<=2; i++)
for (j=0; j<=3; j++)
{

if(j==0)
printf("\nValor de X%d\n",i+1);
if(j==1)
printf("Valor de Y%d\n",i+1);
if(j==2)
printf("Valor de Z%d\n",i+1);
if(j==3)
printf("Solucao da equacao %d\n",i+1);
scanf ("%f",&a);
array[i][j] = a;
}

system ("cls"); // Limpa todos os comandos que já foram dados da janela para um melhor visualização.

printf("*****\nA matriz de entrada eh:\n");
for(i=0; i<=2; i++)
{
for (j=0; j<=3; j++)
printf("%f\t", array[i][j]);

printf("\n");
}

// Nesta parte começa o escalonamento da matriz

// ...inicio da troca de linha (1)...

if (array [0][0] == 0)
{
for(j=0;j<=3;j++)
{
sup [0][j] = array [0][j];
array[0][j] = array [1][j];
array[1][j] = sup [0][j];
}
}

if (array [0][0] == 0)
{ 
for(j=0;j<=3;j++)
{
sup [0][j] = array [0][j];
array[0][j] = array [2][j];
array[2][j] = sup [0][j];
}
}

// ...fim da troca de linha(1)...

//...inicio da troca de linha (2)
if (array[1][1] == 0)
{
for(j=0;j<=3;j++)
{
sup [0][j] = array [1][j];
array[1][j] = array [2][j];
array[2][j] = sup [0][j];
}
}

//fim da troca de linha (2)

if( array[2][0] == 0 && array[2][1] == 0 && array[2][2] == 0) 
{
printf("\n\n***A matriz n possui solucao unica***\n\n"); 


system ("pause");
exit(0); 
}



// inicio do escalonamento
// Nesta parte começa o escalonamento da matrz


p = (float) array[1][0]/array[0][0];


for(j=0;j<=3;j++)
array[1][j] =(float) array[1][j] - p*array[0][j]; 



//****
if(array[0][0] == 0)
{
printf("\n\n***A matriz n possui solucao unica***\n\n");
system ("pause");
exit(0);
}



p = (float) array[2][0]/array[0][0];

for(j=0;j<=3;j++)
array[2][j] =(float) array[2][j] - p*array[0][j];

if (array[1][1] == 0) // observe que caso [1][1] tenha mudado para zero temos que fazer uma nova troca de linha
{ // fazemos essa troca apenas agora porque ambas as linhas já operaram com a linha 1
for(j=0;j<=3;j++)
{
sup [0][j] = array [1][j];
array[1][j] = array [2][j];
array[2][j] = sup [0][j];
}
}


//***

if(array[1][1] == 0)
{
printf("\n\n***A matriz n possui solucao unica***\n\n");
system ("pause");
exit(0);
}




p = (float) array[2][1]/array[1][1];

for(j=0;j<=3;j++)
array[2][j] =(float) array[2][j] - p*array[1][j];

//termino do escalonamento


if( array[2][0] == 0 && array[2][1] == 0 && array[2][2] == 0) 
{
printf("\n\n***A matriz n possui solucao unica***\n\n"); 

system ("pause");
exit(0); 
}


printf("\n\nA matriz escalonada eh:\n");

for(i=0; i<=2; i++)
{
for (j=0; j<=3; j++)
printf("%f\t", array[i][j]);

printf("\n");
}



printf("\n\n");
//***

z = (float) array[2][3]/array[2][2];
y = (float) (array[1][3] - z*array[1][2])/array[1][1];
x = (float) (array[0][3]-z*array[0][2]-y*array[0][1])/array[0][0];

printf("O valor de x eh: %f\nO valor de y eh: %f\nO valor de z eh: %f \n",x,y,z); 



// fim do programa
printf("\n\nFim do programa\n");
system("pause");


}
