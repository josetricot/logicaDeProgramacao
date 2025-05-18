/*

2. Criar um algoritmo que leia 10 números e os armazene em um vetor n. Ao final, imprima os números na ordem inversa.
Exemplo: n[10], n[9], n[8], ...

*/

programa {
    funcao inicio() {
        inteiro i
        real vet[10]

        // Loop para ler os 10 números
        para (i = 0; i < 10; i++) {
            escreva("Digite o número ", i + 1, ": ")
            leia(vet[i])
            limpa()
        }

        // Loop para exibir na ordem inversa (do último ao primeiro)
        escreva("\nOrdem inversa dos números:\n")
        para (i = 9; i >= 0; i--) {
            escreva(vet[i], "\n")
        }
    }
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 7; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */