/*2.Em um laboratório usam-se 3 tipos de cobaias: Ratos, Coelhos e Ovelhas. 
 O código para ratos é 1, para coelhos 2 e ovelhas 3.
 Foram feitas 25 experiências, nas quais foram utilizados um dos tipos de cobaias.
 Faça um algoritmo que leia, para cada uma das experiências, o código da cobaia utilizada e a quantidade de cobaias.

Deseja-se saber:

a) o total de cobaias utilizadas;
b) o total de ratos;
c) o total de coelhos;
d) o total de ovelhas;
e) o percentual de cada cobaia.*/

programa
{
    funcao inicio()
    {
        inteiro cobaia, quantidade, totalratos, totalcoelhos, totalovelhas, total

        totalratos = 0
        totalcoelhos = 0
        totalovelhas = 0

        para (inteiro cont = 1; cont <= 25; cont++)
        {
            escreva ("Informe o tipo de cobaia (1-Rato, 2-Coelho, 3-Ovelha): \n")
            leia(cobaia)
            
            escreva ("Informe a quantidade de cobaias utilizadas: \n")
            leia(quantidade)

            escolha (cobaia)
            {
                caso 1:
                    totalratos = totalratos + quantidade
                    pare
                caso 2:
                    totalcoelhos = totalcoelhos + quantidade
                    pare
                caso 3:
                    totalovelhas = totalovelhas + quantidade
                    pare
				
            }
        }

        total = totalratos + totalcoelhos + totalovelhas

        escreva ("O total de cobaias utilizadas é: ", total, "\n")
        escreva ("O total de ratos é: ", totalratos, " e a porcentagem de ratos é: ", (totalratos * 100.0 / total), "%\n")
        escreva ("O total de coelhos é: ", totalcoelhos, " e a porcentagem de coelhos é: ", (totalcoelhos * 100.0 / total), "%\n")
        escreva ("O total de ovelhas é: ", totalovelhas, " e a porcentagem de ovelhas é: ", (totalovelhas * 100.0 / total), "%\n")
    }
}

/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 722; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */