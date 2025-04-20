programa
{
    funcao inicio()
    {
        caracter codigo
        inteiro totQuantTinto = 0, totQuantBranco = 0, totQuantRose = 0
        inteiro percentGarrafasTinto, percentGarrafasBranco, percentGarrafasRose
        inteiro totalGarrafas 
        logico sair = falso // Flag de controle

        escreva("Cadastro de garrafas (digite F para finalizar):\n")

        enquanto (nao sair) { // Loop controlado pela flag
            escreva("\nDigite T para Tinto, B para Branco, R para Rosé ou F para sair: ")
            leia(codigo)

            se (codigo == 'F' ou codigo == 'f') {
                sair = verdadeiro // Ativa saída do loop
            }
            senao se (codigo == 'T' ou codigo == 't') {
                inteiro quant
                escreva("Quantas garrafas de Tinto? ")
                leia(quant)
                totQuantTinto += quant
            }
            senao se (codigo == 'B' ou codigo == 'b') {
                inteiro quant
                escreva("Quantas garrafas de Branco? ")
                leia(quant)
                totQuantBranco += quant
            }
            senao se (codigo == 'R' ou codigo == 'r') {
                inteiro quant
                escreva("Quantas garrafas de Rosé? ")
                leia(quant)
                totQuantRose += quant
            }
            senao {
                escreva("Opção inválida! Use apenas T/B/R/F.\n")
            }
        }

        // Cálculos finais
        totalGarrafas = totQuantTinto + totQuantBranco + totQuantRose

        se (totalGarrafas > 0) {
            percentGarrafasTinto = (totQuantTinto * 100) / totalGarrafas
            percentGarrafasBranco = (totQuantBranco * 100) / totalGarrafas
            percentGarrafasRose = (totQuantRose * 100) / totalGarrafas
        } senao {
            percentGarrafasTinto = 0
            percentGarrafasBranco = 0
            percentGarrafasRose = 0
        }

        // Relatório
        escreva("\n=== Relatório Final ===\n")
        escreva("Total de garrafas: ", totalGarrafas, "\n")
        escreva("Tinto: ", totQuantTinto, " (", percentGarrafasTinto, "%)\n")
        escreva("Branco: ", totQuantBranco, " (", percentGarrafasBranco, "%)\n")
        escreva("Rosé: ", totQuantRose, " (", percentGarrafasRose, "%)\n")
    }
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 2295; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */