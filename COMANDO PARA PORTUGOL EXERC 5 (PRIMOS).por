/* Dado um número inteiro positivo, determine se ele é ou não um número primo. (Número primo é aquele que só é divisível por 1 e por ele próprio). */

programa
{
    funcao inicio()
    {
        inteiro numero, i, divisores = 0
        
        escreva("Digite um número: ")
        leia(numero)
        
        se (numero < 2) {
            escreva(numero, " não é primo!")
        }
        senao se (numero == 2) {
            escreva(numero, " é primo!")
        }
        senao {
            para (i = 2; i <= numero - 1; i++) {
                se (numero % i == 0) {
                    divisores++
                    pare
                }
            }
            
            se (divisores == 0) {
                escreva(numero, " é primo!")
            } 
            senao {
                escreva(numero, " não é primo!")
            }
        }
    }
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 871; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */