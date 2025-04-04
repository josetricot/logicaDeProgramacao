
programa
{
	
	funcao inicio()
	{
		inteiro valor, soma
	
		soma = 0
		
		para (inteiro cont=1; cont <= 5; cont++)
		{

		escreva ("Informe valor: \n")
		leia(valor)

		soma = soma + valor // soma+=valor
		}

		escreva ("Soma final: ", soma,"\n")	
		escreva ("Média dos valores lidos: ", soma/5,"\n")

		}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 0; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */