/* Matrizes e operações */

/**************************************************************/
/*  Computacao Cientifica - EEL 7021
/*  Grupo 9A
/*         Bruno Luiz da Silva		Matricula:11103495
/*         Vinícius Bernardi		Matricula:11100737
/*         Exercicio 7
/**************************************************************/

#include <stdlib.h>
#include <stdio.h>

float matrix[4][4] = {0}, trans[4][4] = {0}, mult[4][4] = {0};

main(){
	int i, j, k, opt, opt2, extra;
		
	for(i=0;i<4;i++){
		printf("Linha %d \n",i+1);
		for(j=0;j<4;j++) {
			printf("Coluna %d: ",j+1);
			scanf("%f",&matrix[i][j]);
		}
		printf("\n");
	}
	
	printf("Matriz formada: \n\n");
	
	for(i=0;i<4;i++){
		for(j=0;j<4;j++) {
			printf("%.2f \t",matrix[i][j]);
		}
		printf("\n");
	}

		printf("\nO que voce deseja fazer com a matriz? \n");
		printf("1. Somar elementos de uma linha \n");
		printf("2. Somar elementos de uma coluna \n");
		printf("3. Somar elementos da diagonal principal \n");
		printf("4. Somar elementos da diagonal secundaria \n");
		printf("5. Somar todos os elementos\n");
		printf("6. Realizar multiplicacao entre a matriz e a transposta");
		printf("\n\nDigite a opcao desejada: ");
		scanf("%d",&opt);
	
	extra = 0;
	for(k=0;k==0;){
		switch(opt){
			case 1:
				printf("\nEscolha a linha: ");
				scanf("%d",&opt2);
				opt2 = opt2 - 1;
				for(j=0;j<4;j++) {
					extra = extra + matrix[opt2][j];
				}
				printf("Soma dos elementos da linha %d: %d\n", opt2, extra);
				k++;
				break;
			case 2:
				printf("\nEscolha a coluna: ");
				scanf("%d",&opt2);
				opt2 = opt2 - 1;
				for(i=0;i<4;i++) {
					extra = extra + matrix[i][opt2];
				}
				printf("Soma dos elementos da coluna %d: %d\n", opt2, extra);
				k++;
				break;
			case 3:
				for(i=0;i<4;i++){
					j = i;
					extra += matrix[i][j];
				}
				printf("\nSoma dos elementos da diagonal principal: %d\n", extra);
				k++;
				break;
			case 4:
				for(i=3;i>-1;i--){
					j = i;
					extra += matrix[i][j];
				}
				printf("\nSoma dos elementos da diagonal secundaria: %d\n", extra);
				k++;
				break;
			case 5:
				for(i=0;i<4;i++){
					for(j=0;j<4;j++) {
						extra+= matrix[i][j];
					}
				}
				printf("\nSoma de todos elementos: %d\n", extra);
				k++;
				break;
			case 6: 
				for(i=0;i<4;i++){
					for(j=0;j<4;j++) trans[j][i] = matrix[i][j];
				}
				for(i=0;i<4;i++){
					for(j=0;j<4;j++) {
						for(k=0;k<4;k++){
							mult[i][j] += matrix[i][k]*trans[k][j];
						}
						printf("%.2f\t",mult[i][j]);
					}
					printf("\n");
				}
				break;
			default:
				for(i=0;i==0;) {
					printf("Digite uma opcao valida: ");
					scanf("%d",&opt);
					if((opt < 7) && (opt > 0)) i++;
				}
		}
	}
	system("pause");
}
