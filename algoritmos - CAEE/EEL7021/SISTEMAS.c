/*Programa para resolver sistemas lineares*/

/**************************************************************/
/*  Computacao Cientifica - EEL 7021
/*  Grupo 4B
/*         Edilberto Costa Neto        Matricula:11103504
/*         Julio Boing Neto            Matricula:11100715
/*         Exercico 7
/**************************************************************/

#include <stdlib.h>
#include <stdio.h>

main()
{
int Linhas, Colunas, s, o;
while (o!=0) {
system("cls");
printf("Sistemas Lineares\n\n");
printf(" Entre com o numero de incognitas: ");
scanf("%d", &Colunas);




while (Colunas<=0) {
if (Colunas==0) {
system("pause");
system("cls");
printf(" Entre com o numero de incognitas: ");
scanf("%d", &Colunas);
}


}




printf(" Entre com o numero de equacoes: ");
scanf("%d", &Linhas);


Colunas++;




int i, j, c=0, l=0, x=0, m,n;
float Matriz[Linhas][Colunas], v, d[Linhas], e[Colunas];
for (i=0;i<=(Linhas-1);i++) {
for (j=0;j<=(Colunas-1);j++) {
Matriz[i][j]=0;
}
}




for (i=0;i<=(Linhas-1);i++) {
for (j=0;j<=(Colunas-1);j++) {
system("cls");
for (c=0;c<Colunas-1;c++) printf(" a[%d]", c+1);
printf("\n\n");
for (l=0;l<Linhas;l++) {
printf("\n");
for(c=0;c<Colunas;c++) {
printf(" %.5f", Matriz[l][c]);
}
}
if (j<Colunas-1) printf ("\n\n\n\nDefinicao da %da equacao:\n\n Entre com o coeficiente da %da incognita: ",i+1, j+1);
else printf ("\n\n\n\nDefinicao da %da equacao:\n\n Entre com o termo independente: ",i+1);
scanf("%f", &Matriz[i][j]);
}
}


/*Escalonamento*/


for (i=0;i<Linhas;i++) {
l=0;
while (Matriz[i][i] == 0) {
if (l=Linhas) break;
for (j=0;j<Colunas;j++) {
e[j] = Matriz[i+l+1][j];
Matriz[i+l+1][j] = Matriz[i][j];
Matriz[i][j] = e[j];
}
l++;
}


if (Matriz[i][i] != 0) {
v = Matriz[i][i];
for (j=0;j<Colunas;j++) {
Matriz[i][j] /= v;
}
}



for (l=0;l<Linhas;l++) {
d[l] = Matriz[l][x];
if (l!=i) {
for (c=0;c<Colunas;c++) {
if (c>=x) {
Matriz[l][c] = Matriz[l][c] - d[l]*Matriz[i][c];
}
}
}
}
x++;
}


/*Fim do Escalonamento*/


if (s==1) {
system("cls");
for (m=0;m<Colunas-1;m++) printf(" a[%d]", m+1);
printf("\n\n");
for (n=0;n<Linhas;n++) {
printf("\n");
for(m=0;m<Colunas;m++) {
printf(" %.5f", Matriz[n][m]);
}
}
printf("\n\n");
system("pause");
}





c=0; l=0;
for (i=1;i<Linhas;i++) d[i]=0;
for (i=0;i<Linhas;i++) {
v=0;
for (j=0;j<Colunas-1;j++) {
v += fabs(Matriz[i][j]);
}
if (v==0) {
if (Matriz[i][Colunas-1] != 0) c++;
else l++;
}
else {
d[i] = Matriz[i][Colunas-1];
}
}


/*Solucao*/

system("cls");
if (c!=0) printf("\n\nO sistema de equacoes lineares eh impossivel.\n\n");
else {
if (l==0 && Linhas == Colunas-1) {
printf("Resultado do sistema linear:\n\n");
for (i=0;i<Linhas;i++) {
printf("\nO valor da %da incognita eh: a[%d] = %.5f\n", i+1,i+1, d[i]);
}
}
else {
printf("\n\nO sistema possui infinitas solucoes. Suas solucoes resolvem o sistema abaixo:\n\n");
for (i=0;i<Linhas;i++) {
printf("\n");

for (j=0;j<Colunas;j++) {
if (Matriz[i][j] != 0) {
if (j < Colunas-2 && Matriz[i][j]!=0)
printf("%.5f*a[%d] + ", Matriz[i][j],j+1);
else
if (j == Colunas-2)
if (Matriz[i][j]!=0) {
printf("%.5f*a[%d] = ", Matriz[i][j],j+1);
}
else {
printf("= ");
}
else
if (j == Colunas-1) printf("%.5f\n", Matriz[i][j]);
}
if (Matriz[i][j] == 0 && j==Colunas-1)
printf("%.5f", Matriz[i][j]);
}
}
}
}
system("pause");
}
}

