// Exemplo 2 matrizes - Matriz 3x3 com soma das linhas
programa
{
    funcao inicio()
    {
        real matrizA[3][3]
        inteiro i, j
        real somaLinha

        // Entrada de dados
        escreva("Entre com os dados da Matriz:\n")
        para (i = 0; i < 3; i++) {
            para (j = 0; j < 3; j++) {
                escreva("matrizA[", i, "][", j, "]: ")
                leia(matrizA[i][j])
            }
        }

        // Saída da matriz e cálculo da soma
        escreva("\nA matriz informada é:\n")
        para (i = 0; i < 3; i++) {
            somaLinha = 0.0 // Reinicia a soma para cada linha
            para (j = 0; j < 3; j++) {
                escreva(matrizA[i][j], " ")  // Imprime cada elemento
                somaLinha += matrizA[i][j]   // Soma os elementos da linha atual
            }
            escreva("  Soma = ", somaLinha, "\n") // Mostra a soma da linha
        }
    }
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 162; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */