/*Jokenpo é uma brincadeira japonesa, onde dois
jogadores escolhem um dentre três possíveis itens:
PEDRA, PAPEL OU TESOURA.
O objetivo é fazer um juiz de Jokenpo que dada a jogada
dos dois jogadores informa o ganhador da partida.
As regras são as seguintes:
Pedra empata com Pedra e ganha de Tesoura
Tesoura empata com Tesoura e ganha de Papel
Papel empata com Papel e ganha de Pedra
OBS: Não esqueça que o jogo só termina quando os jogadores desistirem da brincadeira.*/

programa {
  funcao inicio() {

    cadeia escolha1, escolha2
    caracter desistir

    faca {
        escreva("\nJogador 1 - Escreva uma opção (pedra, papel ou tesoura): ")
        leia(escolha1)

        escreva("\nJogador 2 - Escreva uma opção (pedra, papel ou tesoura): ")
        leia(escolha2)

        se (((escolha1 != "pedra") e (escolha1 != "papel") e (escolha1 != "tesoura")) ou
           ((escolha2 != "pedra") e (escolha2 != "papel") e (escolha2 != "tesoura"))) {
           
            escreva("\nDigite: pedra, papel ou tesoura em resposta às perguntas.\n")
        
        } senao {

            se (escolha1 == escolha2) {
                escreva("\nEmpate!\n")
            } senao se (
                (escolha1 == "pedra" e escolha2 == "tesoura") ou
                (escolha1 == "tesoura" e escolha2 == "papel") ou
                (escolha1 == "papel" e escolha2 == "pedra")
            ) {
                escreva("\nJogador 1 venceu!\n")
            } senao {
                escreva("\nJogador 2 venceu!\n")
            }

            escreva("\nDeseja parar a brincadeira? (S/s para sim): ")
            leia(desistir)
        }

    } enquanto ((desistir != 'S') e (desistir != 's'))

    escreva("\nBrincadeira encerrada.\n")
  }
}

