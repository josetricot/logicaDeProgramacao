// Exemplo 2.1 matrizes - Matriz 3x3 com soma das linhas (variáveis separadas)
programa
{
    funcao inicio()
    {
        real matrizA[3][3]
        inteiro i, j
        real somaLinha1 = 0.0, somaLinha2 = 0.0, somaLinha3 = 0.0 // Declara as somas

        // Entrada de dados
        escreva("Entre com os dados da Matriz:\n")
        para (i = 0; i < 3; i++) {
            para (j = 0; j < 3; j++) {
                escreva("matrizA[", i, "][", j, "]: ")
                leia(matrizA[i][j])
            }
        }

        // Calcula as somas de cada linha
        para (j = 0; j < 3; j++) {
            somaLinha1 += matrizA[0][j] // Soma da linha 0 (primeira linha)
            somaLinha2 += matrizA[1][j] // Soma da linha 1 (segunda linha)
            somaLinha3 += matrizA[2][j] // Soma da linha 2 (terceira linha)
        }

        // Saída da matriz e das somas
        escreva("\nA matriz informada é:\n")
        para (i = 0; i < 3; i++) {
            para (j = 0; j < 3; j++) {
                escreva(matrizA[i][j], " ") // Imprime cada elemento
            }
            
            // Mostra a soma da linha correspondente
            se (i == 0) {
                escreva("  Soma = ", somaLinha1, "\n")
            } senao se (i == 1) {
                escreva("  Soma = ", somaLinha2, "\n")
            } senao {
                escreva("  Soma = ", somaLinha3, "\n")
            }
        }
    }
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 1402; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */