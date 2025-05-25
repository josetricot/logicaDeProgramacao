/*Matriz - Soma coluna com vetor

3.1 -- Crie um algoritmo que leia uma matriz 3x3 e calcule a soma dos valores das colunas da matriz.

*/

programa
{
    funcao inicio()
    {
        real matrizA[3][3]
        inteiro i, j
        real somaColuna[3] = {0.0, 0.0, 0.0} // Vetor para armazenar soma de cada coluna

        // Entrada de dados
        escreva("Entre com os dados da Matriz:\n")
        para (i = 0; i < 3; i++) {
            para (j = 0; j < 3; j++) {
                escreva("matrizA[", i, "][", j, "]: ")
                leia(matrizA[i][j])
            }
        }

        // Calcula a soma das colunas (invertendo i e j)
        para (j = 0; j < 3; j++) {
            para (i = 0; i < 3; i++) {
                somaColuna[j] += matrizA[i][j] // Soma os elementos da coluna j
            }
        }

        // Saída da matriz
        escreva("\nA matriz informada é:\n")
        para (i = 0; i < 3; i++) {
            para (j = 0; j < 3; j++) {
                escreva(matrizA[i][j], " ")
            }
            escreva("\n")
        }

        // Exibe as somas das colunas
        escreva("\nSoma das colunas:\n")
        para (j = 0; j < 3; j++) {
            escreva("Coluna ", j, ": ", somaColuna[j], "\n")
        }
    }
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 32; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */