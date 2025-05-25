/*Matriz

1) Escreva um algoritmo que leia uma matriz 4x3. Em seguida, recebe um novo valor do usuário e verifica se este valor se encontra 
na matriz. Caso o valor se encontre na matriz, escreva a mensagem “O valor está contido na matriz”. Caso contrário, 
escreva “O valor não está contido na matriz”.

*/

programa
{
    funcao inicio()
    {
        real matrizA[4][3]
        inteiro i, j, valor, encontrou=0

        // Entrada de dados
        escreva("Entre com os dados da Matriz:\n")
        para (i = 0; i < 4; i++) {
            para (j = 0; j < 3; j++) {
                escreva("matrizA[", i, "][", j, "]: ")
                leia(matrizA[i][j])
            }
        }

        // Saída da matriz formatada
        escreva("\nA matriz informada é:\n")
        para (i = 0; i < 4; i++) {
            para (j = 0; j < 3; j++) {
                escreva(matrizA[i][j], " ")  // Imprime cada elemento
            }
            escreva("\n")  // Quebra de linha após cada linha da matriz
        }
        escreva ("Informe número para busca\n")
   	   leia (valor)
        
        para (i = 0; i < 4; i++) {
        	para (j = 0; j < 3; j++) {
        		se (matrizA[i][j]==valor){encontrou=1}
        	}	
        }
	   se (encontrou==1){
	   escreva("O valor está contido no vetor\n")	
	   }	    
    	   senao{escreva("O valor não está contido no vetor\n")}	
    }
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 1061; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */