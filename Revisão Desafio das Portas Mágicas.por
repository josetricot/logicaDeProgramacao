programa
{
    funcao inicio()
    {
        caracter porta
        caracter continuar = 'N' // Inicializa com 'N' para garantir que entre no loop

        // Loop principal
        faca {
            escreva("Escolha uma porta (A, B ou C): ")
            leia(porta)

            // Verifica se a entrada é válida
            se ((porta == 'A') ou (porta == 'a') ou (porta == 'B') ou (porta == 'b') ou (porta == 'C') ou (porta == 'c')) 
            {
                escolha (porta) {
                    caso 'A':
                    caso 'a':
                        escreva("Parabéns, você ganhou um carro Zero Km!\n")
                        pare

                    caso 'B':
                    caso 'b':
                        escreva("Cuidado, o monstro vai te pegar!\n")
                        pare

                    caso 'C':
                    caso 'c':
                        escreva("Você ganhou um vale compras de R$10.000,00 para compras na Havan!\n")
                        pare
                }

                // PERGUNTA SE QUER PARAR APENAS SE A ENTRADA FOI VÁLIDA
                escreva("\nDeseja parar a brincadeira? (S/s para sim): ")
                leia(continuar)
                escreva("\n")
            }
            senao {
                escreva("Opção inválida. Digite apenas A, B ou C.\n")
            }

        } enquanto ((continuar != 'S') e (continuar != 's')) // Repete enquanto não for 'S' ou 's'

        escreva("Obrigado, até o próximo programa do Ratinho! A seguir, Cine Belas Artes...\n")
    }
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 1232; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */