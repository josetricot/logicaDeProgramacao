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
     inteiro numero, contador
        
     escreva("Digite um número: ")
     leia(numero)
        
     contador = 1
        
     escreva("\nTabuada do ", numero, ":\n")
        
     	enquanto(contador <= numero)
     	{
          	escreva(contador, " x ", numero, " = ", contador * numero, "\n")
            
            	contador = contador + 1
        	}
    }
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 559; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */