/*3) Escrever um algoritmo que leia 50 valores para uma variável A. 
 A seguir, conte quantos valores informados são positivos,
quantos são negativos e quantos são zero. Imprimir essas informações.*/

programa
{
    funcao inicio()
    {
        inteiro cont, totalPositivos, totalNegativos, totalZeros
        real valor

        cont = 0
        totalPositivos = 0
        totalNegativos = 0
        totalZeros = 0
        

        enquanto (cont < 50)
        {
	   	escreva("\nDigite o valor: ")
          leia(valor)

          escreva("\nO valor digitado foi: ", valor,"\n")

			se (valor > 0) {
				totalPositivos = totalPositivos + 1
			}

			senao se (valor < 0) {
				totalNegativos = totalNegativos + 1
			}
			
			senao {
				totalZeros = totalZeros + 1
			}


          cont++
       
        }
	    
	   escreva("\nO número de valores informados positivos é: ", totalPositivos, "\n")
	   escreva("\nO número de valores informados negativos é: ", totalNegativos, "\n")		
	   escreva("\nO número de valores informados que são zero é: ", totalZeros, "\n")
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 348; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */