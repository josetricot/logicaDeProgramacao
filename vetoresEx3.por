/*

3. Escreva um algoritmo que leia um vetor com 10 posições de números inteiros.
Em seguida, receba um novo valor do usuário e verifique se este valor está contido no vetor.

*/

programa {
	
	funcao inicio() {
        inteiro i
        inteiro vet[10], vetResposta[10]

        // Loop para ler os 10 números
        para (i = 0; i < 10; i++) {
            escreva("Digite o número ", i + 1, ": ")
            leia(vet[i])
            limpa()
        }
        para (i = 0; i < 10; i++) {
            escreva("\nDigite o número inteiro para verificar se é o que consta no ", i + 1, ": \n")
            leia(vetResposta[i])
            se (vetResposta[i] == vet[i]) {
            	escreva("\nO número corresponde ao espaço corresponte!\n")
            }
            senao {
            	escreva("\nO número NÃO corresponde ao salvo no espaço!\n")
            }
        }
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 843; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */