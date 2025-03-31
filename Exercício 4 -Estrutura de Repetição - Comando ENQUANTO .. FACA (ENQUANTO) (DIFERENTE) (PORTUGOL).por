/*4)Algoritmo que leia um número indeterminado de valores inteiros
até que sseja digitado o número 0 (zero), ou seja,
o zero será o finalizador do algoritmo.
Acumule e mostre a multiplicação de todos os valores 
digitados.*/

programa
{
    funcao inicio()
    {
        inteiro valor, multiplicacao
        
        multiplicacao = 1
        
        escreva("Digite um valor (0 para encerrar): ")
        leia(valor)
        
        // Loop enquanto o valor for diferente de zero
        enquanto (valor != 0)
        {
            multiplicacao = multiplicacao * valor
            escreva("Resultado parcial: ", multiplicacao, "\n")
            
            // Ler próximo valor
            escreva("Digite outro valor (0 para encerrar): ")
            leia(valor)
        }
        
        escreva("\nResultado final da multiplicação: ", multiplicacao)
    }
}

/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 649; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */