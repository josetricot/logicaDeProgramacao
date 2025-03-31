/*6)A prefeitura de uma cidade fez uma pesquisa entre seus habitantes, 
coletando dados sobre o salário e número de filhos.
A prefeitura deseja saber: 

a) média do salário da população; 
b) média do número de filhos; 
c) maior salário; 

O final da leitura de dados se dará com a entrada de um salário negativo.  
*/

programa
{
    funcao inicio()
    {
        inteiro numeroFilhos, cont
        real salario, somaSalario, somaFilhos, mediaSalario, mediaFilhos, maiorSalario

        cont = 0
        somaSalario = 0.0
        somaFilhos = 0.0
        maiorSalario = 0.0   

        escreva("Digite o salário (negativo para encerrar): ")
        leia(salario)

        enquanto (salario >= 0)
        {
            escreva("Digite o número de filhos: ")
            leia(numeroFilhos)

            somaSalario = somaSalario + salario
            somaFilhos = somaFilhos + numeroFilhos

            se (salario > maiorSalario)
            {
                maiorSalario = salario
            }

            cont++

            escreva("\nDigite o salário (negativo para encerrar): ")
            leia(salario)
        }

        se (cont > 0)
        {
            mediaSalario = somaSalario / cont
            mediaFilhos = somaFilhos / cont

		  escreva("\nA média do salário da população é: R$ ", mediaSalario, "\n")
            escreva("A média do número de filhos é: ", mediaFilhos, "\n")
            escreva("O maior salário é: R$ ", maiorSalario, "\n")
        }
        
        senao
        {
            escreva("\nNenhum dado foi inserido.\n")
        }
    }
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 1575; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */