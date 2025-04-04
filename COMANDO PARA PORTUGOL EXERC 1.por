/*Desenvolva um algoritmo que calcule a multiplic ação entre 10 valores inteiros utilizando uma estrutura de repetição contada. Ao final mostrar o resultado.*/


programa
{
	
	funcao inicio()
	{
		inteiro valor, multiplicacao
	
		multiplicacao = 1
		
		para (inteiro cont=1; cont <= 10; cont++)
		{

		escreva ("Informe valor: \n")
		leia(valor)

		multiplicacao = multiplicacao * valor // multiplicacao+=valor
		}

		escreva ("O resultado da multiplicação é: ", multiplicacao,"\n")	


		}
}

/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 285; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */