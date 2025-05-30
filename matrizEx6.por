/* Matriz
6) Crie um algoritmo que leia duas matrizes 5x2 e crie uma terceira matriz também 5x2 com o valor da soma dos elementos de mesmo índice.
*/

programa
{
    funcao inicio()
    {
        real matrizA[5][2], matrizB[5][2], matrizC[5][2]
        inteiro i, j

        // Leitura da matriz A
        escreva("Entre com os dados da matriz A 5x2:\n")
        para (i = 0; i < 5; i++) {
            para (j = 0; j < 2; j++) {  // Corrigido para j < 2
                escreva("matrizA[", i, "][", j, "]: ")
                leia(matrizA[i][j])
            }
        }
        
        // Exibição da matriz A
        escreva("\nMatriz A informada:\n")
        para (i = 0; i < 5; i++) {
            para (j = 0; j < 2; j++) {
                escreva(matrizA[i][j], " ")
            }
            escreva("\n")
        }

        // Leitura da matriz B
        escreva("\nEntre com os dados da matriz B 5x2:\n")
        para (i = 0; i < 5; i++) {
            para (j = 0; j < 2; j++) {  // Corrigido para j < 2
                escreva("matrizB[", i, "][", j, "]: ")
                leia(matrizB[i][j])
            }
        }
        
        // Exibição da matriz B
        escreva("\nMatriz B informada:\n")
        para (i = 0; i < 5; i++) {
            para (j = 0; j < 2; j++) {
                escreva(matrizB[i][j], " ")
            }
            escreva("\n")
        }

        // Cálculo e exibição da matriz C (soma)
        escreva("\nA matriz C da soma é:\n")
        para (i = 0; i < 5; i++) {
            para (j = 0; j < 2; j++) {  // Corrigido para j < 2
                matrizC[i][j] = matrizA[i][j] + matrizB[i][j]
                escreva(matrizC[i][j], " ")  // Mostrando o valor
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
 * @POSICAO-CURSOR = 1911; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */
