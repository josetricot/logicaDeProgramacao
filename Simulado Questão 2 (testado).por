/*Questão 2 Simulado: A prefeitura de uma cidade precisa de um programa para executar uma pesquisa entre seus habitantes e 
coletar informações sobre o salário mensal e o número de filhos. Com os dados obtidos, deseja calcular e 
apresentar os seguintes resultados:
    a) (1,0) Média de salário da população pesquisada;
    b) (1,0) Menor salário;
    c) (1,0) Maior salário;
Para isso, crie um algoritmo que leia o salário e o número de filhos de cada habitante. A entrada dos dados deve 
continuar até que seja digitado um salário negativo, o que indicará o fim da coleta de informações (1,5).
Além dos itens a cima, o algoritmo também deve calcular e exibir:
    d) (1,0) Quantidade de pessoas com salário até R$ 1.500,00;
    e) (1,0) Percentual de pessoas com salário acima de R$ 5.000,00 
    f) (1,5) Média de filhos das pessoas que ganham até R$ 2.000,00
*/
programa
{
	
	funcao inicio()
	{
		real salario, menorSalario=0, maiorSalario=0, totalSalarios=0, totalFilhosPessoasAte2000=0
		inteiro numFilhos, totalPessoas=0, pessoasAte1500=0, pessoasMais5000=0, pessoasAte2000=0

		escreva("\nDigite o salário (em reais) R$:")
		leia(salario)

			se (salario>0){
				menorSalario=salario
				maiorSalario=salario
			}
			senao{escreva("\nPrograma finalizado!")
			}

		enquanto(salario>0){
			escreva("Digite o número de filhos: ")
			leia(numFilhos)
		
			totalPessoas=totalPessoas+1
			totalSalarios=totalSalarios+salario

				se(salario<menorSalario){
				menorSalario=salario
				}
				senao se (salario>maiorSalario){
				maiorSalario=salario
				}

				se (salario<=1500){
				pessoasAte1500=pessoasAte1500+1
				}

				se (salario>5000){
				pessoasMais5000=pessoasMais5000+1
				}

				se (salario<=2000){
				pessoasAte2000=pessoasAte2000+1
				totalFilhosPessoasAte2000=totalFilhosPessoasAte2000+numFilhos
				}
				
			escreva("\nDigite o salário (em reais) R$:")
			leia(salario)	
		}	
			se (totalPessoas>0){
			escreva("\nA média dos salários é: R$",totalSalarios/totalPessoas)	
				}
			senao {
			escreva("\nNenhum dado foi inserido.")	
				}
		escreva("\nO menor salario é: R$",menorSalario)
		escreva("\nO maior salario é: R$",maiorSalario)
		escreva("\nA quantidade de pessoas com salário até R$1500,00: ",pessoasAte1500)
		escreva("\nO percentual de pessoas com salário acima de R$5000,00: ",(pessoasMais5000*100)/totalPessoas,"%")
			se (pessoasAte2000>0){
			escreva("\nA média de filhos das pessoas que ganham até R$2000,00 ",totalFilhosPessoasAte2000/pessoasAte2000)		
				}
			senao {
			escreva("\nNenhuma pessoa ganha até R$2000,00.")	
				}
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 20; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */