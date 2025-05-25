/*Matriz

2) Crie um algoritmo que leia uma matriz 5x5. Em seguida, conte quantos números pares existem na matriz e quantos ímpares.

*/

programa
{
    funcao inicio()
    {
        inteiro matrizA[5][5]
        inteiro i, j, valor, encontrou=0, par=0, impar=0

        // Entrada de dados
        escreva("Entre com os dados da Matriz:\n")
        para (i = 0; i < 5; i++) {
            para (j = 0; j < 5; j++) {
                escreva("matrizA[", i, "][", j, "]: ")
                leia(matrizA[i][j])
            }
        }

        // Saída da matriz formatada
        escreva("\nA matriz informada é:\n")
        para (i = 0; i < 5; i++) {
            para (j = 0; j < 5; j++) {
                escreva(matrizA[i][j], " ")  // Imprime cada elemento
            }
            escreva("\n")  // Quebra de linha após cada linha da matriz
        }
        
        para (i = 0; i < 5; i++) {
        	para (j = 0; j < 5; j++) {
        		se (matrizA[i][j]%2==0){par++}	
	   		senao{impar++}
        	}		
        }   
        escreva("\nForam encontrados ", par ," números pares")
        escreva("\nForam encontrados ", impar ," números ímpares") 
    }
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 925; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = {matrizA, 11, 16, 7};
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */