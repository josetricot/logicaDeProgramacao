/*5)Escrever um algoritmo que leia um valor para uma variável n e,
calcule a tabuada de 1 até n. Mostre a tabuada na forma:

1 x n = n
2 x n = 2n
3 x n = 3n
...
n x n = n²

.*/

programa
{
    funcao inicio()
	{
     	inteiro n
        
        	escreva("Digite um número para gerar a tabuada: ")
        	leia(n)
        
        	escreva("\nTabuada do ", n, "\n")
        
        	// Loop de 1 até n
        	para(inteiro i = 1; i <= n; i++)
        	{
         		escreva(i, " x ", n, " = ", i * n, "\n")
    		}
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 361; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */