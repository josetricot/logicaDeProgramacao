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
        inteiro m, n, i, soma
        
        soma = 0
        
        escreva("Digite o valor de m: ")
        leia(m)
        escreva("Digite o valor de n: ")
        leia(n)
        
        para(i = 0; i < n; i++)
        {
            soma = soma + (m + i)
        }
        
        escreva("A soma dos ", n, " inteiros consecutivos a partir de ", m, " é: ", soma)
    }
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 681; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */