/*    Escrever uma algoritmo em português estruturado que leia 50 valores e encontre o maior e o menor deles.     
Mostrar na tela o resultado.*/

programa
{
    funcao inicio()
    {
        real valor, maiorValor, menorValor

        // Lendo o primeiro valor antes do loop para inicializar as variáveis corretamente
        escreva("Informe o valor 1: \n")
        leia(valor)

        maiorValor = valor
        menorValor = valor

        para (inteiro cont = 2; cont <= 3; cont++) // Começa do 2 porque o 1º já foi lido
        {
            escreva("Informe o valor ", cont, ": \n")
            leia(valor)

            se (valor > maiorValor) {
                maiorValor = valor
            }

            se (valor < menorValor) { // Senao não pode ter condição
                menorValor = valor
            }
        }

        escreva("O maior valor é: ", maiorValor, "\n")
        escreva("O menor valor é: ", menorValor, "\n")
    }
}

/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 831; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */