/*

4. Escreva um algoritmo que leia dois vetores de 10 posições e 
faça a soma dos elementos de mesmo índice, colocando o resultado em um terceiro vetor. Mostre o vetor resultante.

*/

programa {
    funcao inicio() {
        inteiro i
        real vet[10], vet2[10], vet3[10]

        // Loop para ler os 10 números
        para (i = 0; i < 10; i++) {
            escreva("\nDigite um número : ")
            leia(vet[i])
            escreva("\nDigite um número para somar: ")
            leia(vet2[i])
            vet3[i]=vet[i]+vet2[i]
            escreva("\nA soma dos números é: ", vet3[i] ,"\n")
        }
        escreva("\nVetor resultante da soma:\n")
        para (i = 0; i < 10; i++) {
            escreva("Posição ", i+1, ": ", vet3[i], "\n")
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