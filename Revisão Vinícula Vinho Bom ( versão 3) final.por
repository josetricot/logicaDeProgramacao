programa
{
	
	funcao inicio()
	{
		caracter codigo
		inteiro quantTinto=0, quantBranco=0, quantRose=0
		inteiro totQuantTinto=0, totQuantBranco=0, totQuantRose=0
		inteiro percentGarrafasTinto, percentGarrafasBranco, percentGarrafasRose
		inteiro totalGarrafas 


		faca{
		escreva("Digite T para Tinto, B para Branco e R para Rosé:\n")
		leia(codigo)

		se ((codigo=='F') ou (codigo=='f')) {
			pare
		}

		se ((codigo=='T') ou (codigo=='t') ou (codigo=='B') ou (codigo=='b') ou (codigo=='R') ou (codigo=='r')) {
			     
			escolha (codigo) {
                    caso 'T':
                    caso 't':
                        escreva("Quantas garrafas de vinho Tinto você vai guardar?\n")
                        leia(quantTinto)
                        totQuantTinto= totQuantTinto + quantTinto
                        pare

                    caso 'B':
                    caso 'b':
                        escreva("Quantas garrafas de vinho Branco você vai guardar?\n")
                        leia(quantBranco)
                        totQuantBranco= totQuantBranco + quantBranco
                        pare

                    caso 'R':
                    caso 'r':
                        escreva("Quantas garrafas de vinho Rosé você vai guardar?\n")
                        leia(quantRose)
                        totQuantRose= totQuantRose + quantRose
                        pare
				
			}
                escreva("\nRegistro salvo com sucesso!")
                escreva("\n")
            }
            senao {
                escreva("Opção inválida. Digite apenas T, B ou R.\n")
            }

        } enquanto ((codigo != 'S') e (codigo != 's'))

	   totalGarrafas=totQuantTinto+totQuantBranco+totQuantRose
		
	   
        se (totalGarrafas > 0) {
            percentGarrafasTinto = (totQuantTinto * 100) / totalGarrafas
            percentGarrafasBranco = (totQuantBranco * 100) / totalGarrafas
            percentGarrafasRose = (totQuantRose * 100) / totalGarrafas
        } senao {
            percentGarrafasTinto = 0
            percentGarrafasBranco = 0
            percentGarrafasRose = 0
        }
	   
        escreva("O total de garrafas cadastradas foi: ",totalGarrafas," \n")
        escreva("O total de garrafas vinho Tindo: ",totQuantTinto," que corresponde à ",percentGarrafasTinto,"% do total. \n")
        escreva("O total de garrafas vinho Branco: ",totQuantBranco," que corresponde à ",percentGarrafasBranco,"% do total. \n")
        escreva("O total de garrafas vinho Rosé: ",totQuantRose," que corresponde à ",percentGarrafasRose,"% do total. \n")
    }
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 1460; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */