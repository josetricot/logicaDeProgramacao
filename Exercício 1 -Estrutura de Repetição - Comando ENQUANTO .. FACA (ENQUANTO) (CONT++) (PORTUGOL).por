/*1)Fazer um algoritmo leia 20 valores inteiros com uma estrutura 
de repetição. Acumule e mostre a soma dos valores digitados.*/

programa
{
	funcao inicio()
	{
		inteiro valor, cont, soma


		cont=0
		soma=0
		
		enquanto (cont<20)
		{
			escreva("\nDigite o valor: ")
			leia(valor)

			escreva("\nO valor digitado foi: ", valor, "\n")

			soma = soma + valor
		
			cont++
		}
						
		escreva("\nA soma dos valores é: ", soma, "\n")
					
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 443; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */