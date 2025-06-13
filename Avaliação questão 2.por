programa {
    funcao inicio() {
        inteiro matrizM[6][6], vetorN[6], somaVetorN = 0, maiorValorN, pos = 0, pares = 0
        inteiro i, j

        // Preenchimento da matriz
        escreva("\nPreencha a matriz 6x6:\n")
        para (i = 0; i < 6; i++) {
            para (j = 0; j < 6; j++) {
                escreva("Linha ", i+1, ", Coluna ", j+1, ": ")
                leia(matrizM[i][j])
            }
        }

        // Impressão da matriz
        escreva("\nMatrizM:\n")
        para (i = 0; i < 6; i++) {
            para (j = 0; j < 6; j++) {
                escreva(matrizM[i][j], "\t")
            }
            escreva("\n")
        }

        // Preenchimento do vetorN com quadrados da SEGUNDA LINHA (linha índice 1)
        para (j = 0; j < 6; j++) {
            vetorN[j] = matrizM[1][j] * matrizM[1][j]
        }

        // Impressão do vetorN
        escreva("\nVetorN (quadrados da linha 2):\n")
        para (i = 0; i < 6; i++) {
            escreva(vetorN[i], " ")
        }
        escreva("\n")

        // Cálculo da soma dos elementos do vetorN
        somaVetorN = 0
        para (i = 0; i < 6; i++) {
            somaVetorN += vetorN[i]
        }
        escreva("\nSoma do vetorN: ", somaVetorN)

        // Encontrar o maior elemento e sua posição
        maiorValorN = vetorN[0]
        pos = 0
        para (i = 1; i < 6; i++) {
            se (vetorN[i] > maiorValorN) {
                maiorValorN = vetorN[i]
                pos = i
            }
        }
        escreva("\nMaior elemento: ", maiorValorN, " (posição ", pos+1, ")")

        // Contar números pares
        pares = 0
        para (i = 0; i < 6; i++) {
            se (vetorN[i] % 2 == 0) {
                pares++
            }
        }
        escreva("\nNúmeros pares: ", pares)
    }
}