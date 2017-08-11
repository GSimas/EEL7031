/**************************************************************/
/*  Computacao Cientifica - EEL 7021
/*  Grupo 9A
/*         Bruno Luiz da Silva		Matricula:11103495
/*         Vinícius Bernardi		Matricula:11100737
/*         Aplicação científica 2
/*		   Exercício 1

/**************************************************************/
// conversor triangulo -- estrela e estrela -- triangulo

/* Este código tem por função fazer as conversões Triangulo--Estrela, Estrela_Triangulo  usadas para o calculo da resistência
   equivalente em circuitos elétricos. A ideia básica do código é receber três valores de resistencia armazenando-os em um
   vetor. Declara-se então um ponteiro para o primeiro endereço deste vetor e a partir de então só é utilizado os endereços 
   durante o restante do programa. Foram criadas duas funções principais "float* estrela_triangulo (float*) e 
   float* triangulo_estrela (float*)" para fazer a conversão de acordo com os vetores fornecidos pelo usuário. Outras duas
   funções auxiliares "void   imprime_opcao(float*) e void imprime_resultado (float*)"  foram criadas, cujo objetivo é 
   apenas diminuir o código da função main. O vetor recebe os valores usando uma função scanf, atribui-se o endereço do primeiro
   elemento do vetor ao ponteiro *k. Um case define para onde k será mandado (qual das conversões). As funções realizam as 
   operações e retornam (usando novamente k) os resultados. No fim de cada sequencia de conversão k recebe novamente o endereço
   do primeiro elemento do vetor de armazenamento. Pressionando "0" quando mostrada as opções o programa é finalizado. 
   
   Obs: Durante o switch, caso sejá precionado uma letra e não um número o programa trava.*/



# include <stdio.h>
# include <stdlib.h>


float* estrela_triangulo (float*);
float* triangulo_estrela (float*);
void   imprime_opcao     (float*);
void   imprime_resultado (float*);


main()  {
                 
        int i,escolha=100;   // i: usado nos comandos for.  escolha: usado no case
        float arrayarm[3],*k; // arrayarm[3]: armazena os três valores de resistencia fornecidos pelo usuário
                              // *k: ponteiro que será apontado para arrayarm[0]
        char s1[]={"------------------------------"}; // Usado para apresentação do programa
        
        
  puts(s1);      
  puts("Entre com as resistencias R1, R2, R3 (Em oms)");
  for(i=0;i<=2;i++)
  {
     printf("R%d = ",i+1);
     scanf("%f",&arrayarm[i]); 
  }
  
  // atribuição a k do endereço do arrayarm[0], primeiro elemento do arrayarm
  k = &arrayarm[0];
  
  while (escolha != 101) // condição arbitraria para que quando selecionado "0" o while não seja executado
  {
  imprime_opcao(k);
  scanf("%d",&escolha);
  
  switch(escolha)
  {
     case 1:
          k = estrela_triangulo(k);
          break;
     case 2:
          k = triangulo_estrela(k);
          break;
     case 0:
          puts("O programa foi finalizado");
          escolha = 101; // atribui a escolha um o valor que finaliza o comando while
          break;
     default:
          escolha = 100; // Faz com que a função imprime_resultado não seja executada
          break;
  }
  if (escolha!=101 && escolha!=100) // condições para que o resultado não seja executado
  {
  imprime_resultado(k);
  k = &arrayarm[0]; // Parte fundamental do código. Como k teve seu valor mudado é necessario que ele volte a apontar para
  }                 // arrayarm[0], caso contrario é operado com os resultados obtidos anteriormente.
  }
  
  system("pause");
}


 // Funções
 
 
 //conversao Estrela--Triangulo 
 float * estrela_triangulo(float *k)
 {
       float *work;
       float static arm_et[3];   // A escolha de declarar o vetor como static tem como fundamento o fato de que quando
                                 // a função é finalizada os valores são perdidos. Declarando o vetor static isso não ocorre.
  arm_et[0] = (*k * *(k+1) + *k * *(k+2) + *(k+1) * *(k+2))/ *k;
  arm_et[1] = (*k * *(k+1) + *k * *(k+2) + *(k+1) * *(k+2))/ *(k+1);
  arm_et[2] = (*k * *(k+1) + *k * *(k+2) + *(k+1) * *(k+2))/ *(k+2);
 
 puts("Conversao Estrela--Triangulo");
 work = &arm_et[0];  // retorna o endereço do vetor que (por ser static) permanece tendo os valores calculados
 return(work);
 }
 
 //Conversao Triangulo--Estrela
 
 float * triangulo_estrela(float *k)
 {
       float *work;
       float static arm_te[3]; // A escolha de declarar o vetor como static tem como fundamento o fato de que quando
                               // a função é finalizada os valores são perdidos. Declarando o vetor static isso não ocorre.  
       
  arm_te[0] = (*(k+1) * *(k+2))/ (*k + *(k+1) + *(k+2));
  arm_te[1] = (*(k)   * *(k+2))/ (*k + *(k+1) + *(k+2));
  arm_te[2] = (*(k)   * *(k+1))/ (*k + *(k+1) + *(k+2));
  
  puts("Conversao Triangulo--Estrela");
  work = &arm_te[0]; // retorna o endereço do vetor que (por ser static) permanece tendo os valores calculados
  return(work);
 }
  
 //Imprime algumas opções dadas durante o código proncipal
  
 void imprime_opcao(float*k)
 {
  char s1[]={"------------------------------"};
  
  system("cls");
  puts(s1);
  printf("->R1= %f\n->R2= %f\n->R3= %f\n",*k,*(k+1),*(k+2));  
  puts(s1); puts("\n\n");
  puts(s1);
  
  puts("Tecle (1) para conversao estrela--triangulo");
  puts("Tecle (2) para conversao triangulo--estrela");
  puts("Tecle (0) para finalizar");
 
 }
  
//Imprime Resultado

 void imprime_resultado(float*k)
 {
  char s1[]={"------------------------------"}; 
  int i;
  
  system("cls");
  puts(s1);
  puts("As resistencias convertidas valem");
  for(i=0;i<=2;i++)
  printf("R%d = %f\n",i,*(k+i));
  system("pause");
 }
