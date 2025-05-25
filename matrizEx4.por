/*Matriz

4) Crie um algoritmo que calcule a média referente a todos os elementos de uma matriz 6x3 e informe o maior e o menor elemento da matriz.

*/

programa
{
    funcao inicio()
    {
        real matrizA[6][3]
        inteiro i, j
        real soma = 0.0, media, menor, maior
        inteiro totalElementos = 6 * 3 // Total de elementos na matriz (6x3)

        // Entrada de dados e inicialização de maior/menor
        escreva("Entre com os dados da matriz 6x3:\n")
        
        para (i = 0; i < 6; i++) {
            para (j = 0; j < 3; j++) {
                escreva("matrizA[", i, "][", j, "]: ")
                leia(matrizA[i][j])
                
                // Inicializa maior e menor com o primeiro elemento
                se (i == 0 e j == 0) {
                    maior = matrizA[i][j]
                    menor = matrizA[i][j]
                }
                senao {
                    se (matrizA[i][j] > maior) {
                        maior = matrizA[i][j]
                    }
                    se (matrizA[i][j] < menor) {
                        menor = matrizA[i][j]
                    }
                }
                
                soma += matrizA[i][j] // Acumula a soma total
            }
        }

        // Calcula a média
        media = soma / totalElementos

        // Exibe a matriz
        escreva("\nMatriz informada:\n")
        para (i = 0; i < 6; i++) {
            para (j = 0; j < 3; j++) {
                escreva(matrizA[i][j], " ")
            }
            escreva("\n")
        }

        // Exibe os resultados
        escreva("\nResultados:\n")
        escreva("Média de todos os elementos: ", media, "\n")
        escreva("Maior elemento: ", maior, "\n")
        escreva("Menor elemento: ", menor, "\n")
    }
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 1790; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = {matrizA, 11, 13, 7};
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */