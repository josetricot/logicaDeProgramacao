/*7) Escrever um programa que lê um par de valores m,n, 
todos inteiros e positivos e, calcule e escreva a soma dos n
inteiros consecutivos a partir de m, inclusive.
Exemplo:

m | n
5   3

(soma dos 3 inteiros consecutivos a partir de 5 inclusive)
5+6+7 = 18

*/

programa
{
    funcao inicio()
    {
        inteiro m, n, soma, cont, inicio_valor
        
        soma = 0
        cont = 0
        
        escreva("Digite o valor de m: ")
        leia(m)
        inicio_valor = m
        
        escreva("Digite o valor de n: ")
        leia(n)
        
        enquanto (cont < n)
        {
            soma = soma + m
            m = m + 1    
            cont++       
        }
              
        escreva("A soma dos ", n, " inteiros consecutivos a partir de ", inicio_valor, " é: ", soma, "\n")
    }
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 667; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */