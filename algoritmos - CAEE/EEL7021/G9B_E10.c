/**************************************************************/
/*  Computacao Cientifica - EEL 7021
/*  Grupo 9A
/*         Bruno Luiz da Silva		Matricula:11103495
/*         Vinícius Bernardi		Matricula:11100737
/*         Aplicação científica 2
/*		   Exercício 2
/**************************************************************/

/*	PROGRAMA DE CÁLCULO DE CONSUMO MENSAL

	O programa de cálculo de consumo funciona da seguinte forma:
	1)	Há uma estrutura para organizar os dados, a ela é dado o nome "equipamento"
	2)	3 variáveis usam a estrutura: *e (ponteiro onde seram guardadas as fichas dos equipamentos), matrix (onde 
		serão guardados os dados temporiariamente, durante o scanf) e temp que será usada para criar a ordem crescente de consumo
	3)	Há uma função chamada consumo() onde calculará o consumo de cada equipamento e o guardará na estrutura
	4)	No final os dados serão ordenados do que mais consome para o que menos consome

*/
#include <stdlib.h>
#include <stdio.h>
#include <ctype.h>
#define custo 0.35; // Defina o custo kWH aqui.

float consumo(int,float,float,int); // Protótipo da função de consumo

// Estrutura para guardar as informações do equipamento
struct equipamento {
	char descricao[40];
	int quantidade;
	float potencia;
	float horas;
	int dias;
	float consumo;
};

int main(){
	struct equipamento *e = 0,matrix,temp;
	int i,j,m;
	float total = 0;
	printf("--------------------- CALCULO DE CONSUMO MENSAL DE ENERGIA ---------------------\n\n");
	printf("->Quantos eletronicos voce deseja registrar? ");
	scanf("%d",&m);
	printf("\n\n");

	//Alocação de memória para a estrutura "equipamento"
	e = (struct equipamento *) malloc(sizeof(struct equipamento)*m*6);

	for(i=0;i<m;i++){
		printf("Item %d:\n",i+1);
		printf("\tDigite a descricao do equipamento: ");
		scanf(" %[^\n]s", &matrix.descricao); //scanf modificado para aceitar strings com espaço

		printf("\tQual eh a quantidade de unidades do equipamento? ");
		scanf("%d", &matrix.quantidade);
		printf("\tQual eh a potencia do equipamento (W)? ");
		scanf("%f", &matrix.potencia);
		printf("\tQual a quantidade de horas em uso? ");
		scanf("%f", &matrix.horas);
		printf("\tQuantos dias do mes eh usado? ");
		scanf("%d", &matrix.dias);
		matrix.consumo = consumo(matrix.quantidade,matrix.potencia,matrix.horas,matrix.dias);
		printf("\tCusto mensal: %.2f",matrix.consumo);
		*(e+i) = matrix;
		printf("\n\n");
	}

	// Loop para ordenar os valores de forma decrescente
	for(i=0;i<m;i++){
		for(j=0;j<m;j++){
			if ((e+i)->consumo > (e+j)->consumo) {
				temp = *(e+j);
				*(e+j) = *(e+i);
				*(e+i) = temp;
			}
		}
	}
	
	// Exibindo resultados
	system("cls");
	printf("-------------------------------- CONSUMO MENSAL --------------------------------\n");
	printf("\n%-10s %-50s \n","CONSUMO","DESCRICAO");
	for(i=0;i<m;i++){
		printf("%-10.2f %-50s \n",(e+i)->consumo,(e+i)->descricao);
		total += (e+i)->consumo;
	}
	printf("\nTOTAL: %.2f\n\n",total);

	system("pause");
	free(e); //Limpa o ponteiro e da memória
}

// Fórmula do consumo
float consumo(int quantidade,float potencia,float horas,int dias){
	return ((quantidade*potencia*horas*dias)/1000)*custo;
};