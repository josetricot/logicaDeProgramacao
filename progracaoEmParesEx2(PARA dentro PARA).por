
/*2.Crie um algoritmo que leia um número do usuário e desenhe o seguinte padrão na tela.
Ex: para o número = 5
*****
****
***
**
*

*/

programa 
{
	funcao inicio() 
	{
		inteiro numero, contador, contador2
		
		escreva("Informe um número para ver sua tabuada: ")
		leia(numero)
		
		para (contador = numero; contador > 0; contador--) {
			para (contador2 = 1; contador2 <= contador; contador2++) {
				escreva("*")
			}
			escreva("\n")
		}
	}
		
}

/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 5; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */