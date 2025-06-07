/*
 revisão exercício 3

ATIVIDADE EAD: (envio até 09/06)

PLANETAS: Crie um algoritmo que leia o código do planeta (ver lista abaixo) e exiba uma característica do mesmo. 
Verifique se o código está entre 1 e 8, caso contrário, exiba "Código inválido" e
solicite um novo código até que seja digitado um código válido. 
Para códigos válidos, informe, também, se o planeta pertence à parte interna do sistema solar – Planeta Rochoso (1 a 4)
ou externa – Planeta Gasoso (5 a 8).
Códigos / Planetas / Informações
1 – Mercúrio: mais próximo do Sol
2 – Vênus: mais quente
3 – Terra: único com vida conhecida
4 – Marte: planeta vermelho
5 – Júpiter: maior planeta do Sistema Solar
6 – Saturno: famoso por seus anéis
7 – Urano: tem rotação inclinada
8 – Netuno: mais distante do Sol
0 – Encerra o programa
*/

programa {
    funcao inicio() {
    		cadeia planetas[8] = {"Mercúrio", "Vênus", "Terra", "Marte", "Júpiter", "Saturno", "Urano", "Netuno"}
		cadeia informacoes[8] = {"mais próximo do Sol", "mais quente", "único com vida conhecida", "planeta vermelho", "maior planeta do Sistema Solar", "famoso por seus anéis", "tem rotação inclinada", "mais distante do Sol"}
     	cadeia tipos[8] = {"Rochoso", "Rochoso", "Rochoso", "Rochoso", "Gasoso", "Gasoso", "Gasoso", "Gasoso"}
		inteiro codigo
		
     	faca {		
     		escreva("Digite o código do planeta (1 a 8) ou 0 para sair: ")
     		leia(codigo)
     		
        			se (codigo==0) {
        				pare
        			}
        			
        			se (codigo < 1 ou codigo > 8) {
               		escreva("Código inválido!\n")
            		}
            			senao {
                		escreva("Planeta: ", planetas[codigo-1], "\n")
                		escreva("Característica: ", informacoes[codigo-1], "\n")
                		escreva("Tipo: Planeta ", tipos[codigo-1], "\n")

                		se (codigo <= 4) {
                    		escreva("Localização: Parte interna do Sistema Solar\n")
                		}
                		senao {
                    		escreva("Localização: Parte externa do Sistema Solar\n")
                		}
            		}
     	} enquanto (codigo != 0)
     escreva("Programa encerrado.\n")
    }
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 2166; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */