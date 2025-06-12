/*

1)Elabore um algoritmo que leia a altura e o nome dos 12 jogadores do time de basquete do IFRS, utilizando dois vetores: vet_nome e vet_alt. Ao final o programa deve apresentar na tela:
a) A maior altura;
b) A menor altura;
c) A média de altura dos jogadores;
d) O nome do jogador mais alto;
e) O nome do jogador mais baixo.

*/

programa {
    
    funcao inicio() {
        inteiro i=0
        cadeia vet_nome[12], nomeMenor, nomeMaior
        real vet_alt[12], maiorAltura, menorAltura, mediaAlt, totAlt=0.0

        // Primeiro le o primeiro jogador para inicializar as variáveis
        escreva ("Digite o nome do jogador 1: \n")
        leia(vet_nome[0])
        escreva ("Altura do jogador 1: \n")
        leia(vet_alt[0])
        
        // Inicializa com o primeiro jogador
        maiorAltura = vet_alt[0]
        menorAltura = vet_alt[0]
        nomeMaior = vet_nome[0]
        nomeMenor = vet_nome[0]

        // Começa do segundo jogador (i=1)
   
        para (i=1; i<12; i++){
            limpa()
            escreva ("Digite o nome do jogador ", i+1, ": \n")
            leia(vet_nome[i])

            escreva ("Altura do jogador ", i+1, ": \n")
            leia(vet_alt[i])
        }    
        
        para (i=0; i<12; i++) {
            se (vet_alt[i] > maiorAltura) {
                maiorAltura = vet_alt[i]
                nomeMaior = vet_nome[i]
            }
            se (vet_alt[i] < menorAltura) {
                menorAltura = vet_alt[i]
                nomeMenor = vet_nome[i]
            }
            totAlt = totAlt + vet_alt[i]
        }    

        mediaAlt = totAlt/12.0

        escreva("\nA maior altura é: ", maiorAltura)
        escreva("\nA menor altura é: ", menorAltura)
        escreva("\nA média das alturas é: ", mediaAlt)
        escreva("\nO nome do Jogador mais alto é: ", nomeMaior)
        escreva("\nO nome do Jogador mais baixo é: ", nomeMenor)
    }
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 343; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = {maiorAltura, 17, 26, 11}-{menorAltura, 17, 39, 11}-{mediaAlt, 17, 52, 8};
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */
