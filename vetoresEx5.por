/*

5. Crie um algoritmo que leia um vetor de 9 posições de números maiores do que zero, imprima o vetor e informe:
Quantos números ímpares existem no vetor;
Quantos pares;
Quantos números maiores do que 50;
Quantos números menores do que 7.

*/

programa {
    funcao inicio() {
        inteiro i, pares = 0, impares = 0, maior50 = 0, menor7 = 0
        inteiro vet[9]
        
        // Leitura dos valores com validação
        para (i = 0; i < 9; i++) {
            faca {
                escreva("Digite o ", i+1, "º número (maior que zero): ")
                leia(vet[i])
            } enquanto (vet[i] <= 0) // Repete até digitar valor válido
            
            // Verificações
            se (vet[i] % 2 == 0) {
                pares++
            } senao {
                impares++
            }
            
            se (vet[i] > 50) {
                maior50++
            }
            
            se (vet[i] < 7) {
                menor7++
            }
        }
        
        // Exibição dos resultados
        escreva("\nValores informados:\n")
        para (i = 0; i < 9; i++) {
            escreva("Posição ", i+1, ": ", vet[i], "\n")
        }
        
        escreva("\nResumo:\n")
        escreva("- Números pares: ", pares, "\n")
        escreva("- Números ímpares: ", impares, "\n")
        escreva("- Maiores que 50: ", maior50, "\n")
        escreva("- Menores que 7: ", menor7, "\n")
    }
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 245; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */