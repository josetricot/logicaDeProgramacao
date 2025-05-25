/*Matriz

3) Crie um algoritmo que leia uma matriz 3x3 e calcule a soma dos valores das colunas da matriz.

*/
programa
{
    funcao inicio()
    {
        real matrizA[3][3]
        inteiro i, j
        real somaColuna

        // Entrada de dados
        escreva("Entre com os dados da Matriz 3x3:\n")
        para (i = 0; i < 3; i++) {
            para (j = 0; j < 3; j++) {
                escreva("matrizA[", i, "][", j, "]: ")
                leia(matrizA[i][j])
            }
        }

        // Exibe a matriz
        escreva("\nMatriz informada:\n")
        para (i = 0; i < 3; i++) {
            para (j = 0; j < 3; j++) {
                escreva(matrizA[i][j], " ")
            }
            escreva("\n")
        }

        // Calcula e exibe a soma de cada coluna
        escreva("\nSoma das colunas:\n")
        para (j = 0; j < 3; j++) {
            somaColuna = 0.0 // Reinicia a soma para cada coluna
            para (i = 0; i < 3; i++) {
                somaColuna += matrizA[i][j] // Soma os elementos da coluna j
            }
            escreva("Coluna ", j, ": ", somaColuna, "\n")
        }
    }
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 778; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */