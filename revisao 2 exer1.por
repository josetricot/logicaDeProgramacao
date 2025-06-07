/*
 revisão ex1
 
 VETOR: Leia um vetor A de 10 elementos e faça o que se pede:

a) crie um vetor B com os números de A multiplicados por 2;

b) calcule a soma de todos os elementos do vetor A; (utilize estrutura de repetição)

c) encontre o maior elemento do vetor B e informe a sua posição;

d) identifique se o primeiro elemento do vetor A é par ou ímpar;

e) conte quantos números maiores que 8 estão contidos no vetor B;

Imprimir os vetores A e B e mostrar os cálculos solicitados.
 */

programa
{
	
	funcao inicio()
	{
		inteiro i, posB, BmaioresQueOito=0
		inteiro vetA[10], vetB[10], somaA=0, maiorValorB

	   // Loop para ler os 10 números de A e B
        para (i = 0; i < 10; i++) {
            escreva("Digite o número ", i + 1, ": ")
            leia(vetA[i])
            vetB[i]=vetA[i]*2
            //calcula soma de A
            somaA=somaA+vetA[i]

            //limpa tela
            limpa()
        }
	   escreva("\n")
	   //escreve a tela vetor A
	   para (i = 0; i < 10; i++) {
	   	escreva("\nvetA[",i,"]= ",vetA[i])
	   }
	   //escreve na tela vetor B
	   escreva("\n")
	   para (i = 0; i < 10; i++) {
	   	escreva("\nvetB[",i,"]= ",vetB[i])	
	   }
	   escreva("\n")
	   //calcula maior valor de B
        maiorValorB=vetB[0]
        //encontra a posição do maior em B
        posB=0
        para (i = 0; i < 10; i++) {
            se (vetB[i]>maiorValorB) {
            	maiorValorB=vetB[i]
            	posB=i
            }
        }
        escreva("\nO maior valor de B é :", maiorValorB ," na posição: ", posB,".")
	   escreva("\nA soma dos vetores de A é: ",somaA)
	   //veirifica de primeiro vetor A é positivo
	   escreva("\nO primeiro vetor de A é: ",vetA[0])
	   	se (vetA[0] % 2 == 0) {
	   		escreva("\nO número é par!")
	   		} senao {
	   			escreva ("\nO número é ímpar!")	
	   		  }
	   
	    escreva("\n") 	

	   //calcula quando valores de B são maiores que zero
        para (i = 0; i < 10; i++) {    
            se (vetB[i]>8) {
            	BmaioresQueOito=BmaioresQueOito+1
            }
         
        } 	   
	escreva("\nO número de vetores em B que são maiores que 8 são: ",BmaioresQueOito)
	}	
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 1522; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */
