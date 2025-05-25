// Exemplo 1 matrizes - Matriz 3x3
programa
{
    funcao inicio()
    {
        real matrizA[3][3]
        inteiro i, j

        // Entrada de dados
        escreva("Entre com os dados da Matriz:\n")
        para (i = 0; i < 3; i++) {
            para (j = 0; j < 3; j++) {
                escreva("matrizA[", i, "][", j, "]: ")
                leia(matrizA[i][j])
            }
        }

        // Saída da matriz formatada
        escreva("\nA matriz informada é:\n")
        para (i = 0; i < 3; i++) {
            para (j = 0; j < 3; j++) {
                escreva(matrizA[i][j], " ")  // Imprime cada elemento
            }
            escreva("\n")  // Quebra de linha após cada linha da matriz
        }
    }
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 719; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */