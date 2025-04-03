/* 4) Escreva um algoritmo que leia um número inicial e um número final para A e B e ao final imprima na tela os números que fazem parte do intervalo entre A e B, 
inclusive. Obs: Testar se o número inicial (A) é menor que o número final (B), caso contrário fazer a troca. */

programa
{
    funcao inicio()
    {
        inteiro a, b, aux
        
        escreva("Digite um número inicial (inteiro): ")
        leia(a)
        
        escreva("Digite um número final (inteiro): ")
        leia(b)
        
        // Se o número inicial for maior que o final, troca os valores
        se (a > b)
        {
            aux = a
            a = b
            b = aux
        }
        
        escreva("\nO intervalo entre ", a, " e ", b, " é:")
        

     	faca {
            	escreva(" ", a)
            	a++
     		}  
                    	
     	enquanto(a <= b)
    }    
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 579; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */
