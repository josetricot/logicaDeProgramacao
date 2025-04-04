/*4.Um Posto de combustíveis deseja determinar qual de seus produtos têm a preferência de seus clientes.
Escreva um algoritmo para ler o tipo de combustível abastecido (codificado da seguinte forma: 1. álcool 2.Gasolina 3.Diesel 4.Fim).
Caso o usuário informe um código inválido,
fora da faixa de 1 a 4, deve ser solicitado um novo código, até que seja válido.
Ao ser informado o código do combustível, o seu respectivo nome deve ser impresso na tela.
O programa será encerrado quando o código informado for o número 4 escrevendo então a mensagem "Programa Finalizado",
a quantidade de clientes que abasteceram cada tipo de combustível e o nome do combustível que tem a preferência dos clientes.*/


programa
{
    funcao inicio()
    {
        inteiro combustivel, totalAlcool = 0, totalGasolina = 0, totalDiesel = 0
        
        faca {
            escreva("Informe o tipo de combustível (1-Álcool, 2-Gasolina, 3-Diesel, 4-Fim): ")
            leia(combustivel)
            
            // Validação do código
            enquanto (combustivel != 1 e combustivel != 2 e combustivel != 3 e combustivel != 4) {
                escreva("Código inválido! Informe 1, 2, 3 ou 4: ")
                leia(combustivel)
            }
            
            // Processamento
            escolha (combustivel) {
                caso 1:
                    escreva("Álcool\n")
                    totalAlcool++
                    pare
                caso 2:
                    escreva("Gasolina\n")
                    totalGasolina++
                    pare
                caso 3:
                    escreva("Diesel\n")
                    totalDiesel++
            }
        } enquanto (combustivel != 4) // Condição de saída aqui
        

        
        escreva("\nPrograma Finalizado")
        escreva("\nÁlcool: ", totalAlcool)
        escreva("\nGasolina: ", totalGasolina)
        escreva("\nDiesel: ", totalDiesel)
        
         		se (totalAlcool > totalGasolina e totalAlcool > totalDiesel) {
            	escreva("\nO combustível preferido é Álcool.\n")
        		}
        		senao se (totalGasolina > totalDiesel) {
            	escreva("\nO combustível preferido é Gasolina.\n")
        		}
        		senao {
            	escreva("\nO combustível preferido é Diesel.\n")
        		}
    }
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 2252; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */