//Conversão de temperaturas

/**************************************************************/
/*  Computacao Cientifica - EEL 7021
/*  Grupo 9A
/*         Bruno Luiz da Silva		Matricula:11103495
/*         Vinícius Bernardi		Matricula:11100737
/*         Exercicio 6
/**************************************************************/

/* O funcionamento desse programa é bem peculiar. Todas as temperaturas, em qualquer 
escala, que serão colocadas pelo usuário serão transformadas para a escala kelvin 
(menos se já for em kelvin) e assim converte-se de kelvin para a escala desejada.

Com isso nota-se que diminuí-se as linhas de código do programa, afinal, não é
necessário uma função para cada conversão*/

#include <stdlib.h>
#include <stdio.h>

float celTOkel(float);
float fahTOkel(float);
float ranTOkel(float);
float reaTOkel(float);

float kelTOcel(float);
float kelTOfah(float);
float kelTOran(float);
float kelTOrea(float);

float convertFROMkelvin(int, float);

main(){
	int escala1 = 0, escala2 = 0, i;
	float conversao1 = 0, conversao2 = 0, temp1 = 0;

	printf("Escolha a primeira escala: \n");
	printf("1) Celsius: \n");
	printf("2) Fahrenheit \n");
	printf("3) Rankine\n");
	printf("4) Reaumur \n");
	printf("5) Kelvin \n");
	printf("Digite a escala: ");
	scanf("%i", &escala1);
	for(i = 0; i == 0;){
		if((escala1 > 5) || (escala1 < 1)){	
			printf("Digite uma escala listada: ");
			scanf("%i", &escala1);
		}
		else i++;
	}
	printf("Valor da temperatura: ");
	scanf("%f",&temp1);


	printf("\nEscolha a segunda escala: \n");
	printf("1) Celsius: \n");
	printf("2) Fahrenheit \n");
	printf("3) Rankine\n");
	printf("4) Reaumur \n");
	printf("5) Kelvin \n");
	printf("Digite a escala: ");
	
	// Loop: Checa se a segunda escala é igual a primeira ou não. Caso for, pede-se para digitar uma nova escala
	scanf("%i", &escala2);
	for(i = 0; i == 0;){
		if(escala2 == escala1) {
			printf("Digite uma escala diferente da primeira: ");
			scanf("%i", &escala2);
		}
		else if((escala2 > 5) || (escala2 < 1)){	
			printf("Digite uma escala listada: ");
			scanf("%i", &escala2);
		}
		else i++;
	}
	printf("\nValor da temperatura convertida: ");

	switch(escala1){
		case 1:
			conversao1 = celTOkel(temp1); 
			conversao2 = convertFROMkelvin(escala2, conversao1);
			printf("%.2f",conversao2);
			break;
		case 2:
			conversao1 = fahTOkel(temp1);
			conversao2 = convertFROMkelvin(escala2, conversao1);
			printf("%.2f",conversao2);
			break;
		case 3:
			conversao1 = ranTOkel(temp1);
			conversao2 = convertFROMkelvin(escala2, conversao1);
			printf("%.2f",conversao2);
			break;

		case 4:
			conversao1 = reaTOkel(temp1);
			conversao2 = convertFROMkelvin(escala2, conversao1);
			printf("%.2f",conversao2);
			break;
		case 5:	
			//temp1 não é usada pois a temperatura já está em kelvin
			conversao2 = convertFROMkelvin(escala2, temp1);
			printf("%.2f",conversao2);
			break;
   }
   printf("\n");
   system("pause");
}

//Primeira etapa das conversões: transforma tudo para kelvin
float celTOkel(float temp) {return (temp + 273.15);}
float fahTOkel(float temp) {return ((temp + 459.65) * ((float) 5 / (float) 9));}
float ranTOkel(float temp) {return (temp * ((float) 5 / (float) 9));}
float reaTOkel(float temp) {return (temp * ((float) 5 / (float) 4) + 273.15);}

//Segunda etapa das conversões: transforma de kelvin para a escala desejada
float kelTOcel(float temp) {return ((float)temp - 273.15);}
float kelTOfah(float temp) {return ((float)temp * ((float)9/(float)5) - 459.67);}
float kelTOran(float temp) {return ((float)temp * ((float)9/(float)5));}
float kelTOrea(float temp) {return (((float)temp - 273.15) * ((float)4/(float)5));}

float convertFROMkelvin(int escala, float valor){
	switch(escala){
		case 1: return kelTOcel(valor); break;
		case 2: return kelTOfah(valor); break;			
		case 3: return kelTOran(valor); break;
		case 4: return kelTOrea(valor); break;
		case 5: return valor; break;
	}
}