/*aula enquanto faça... enquanto exemplo 1*/

programa
{
    funcao inicio()
    {
        real nota1, nota2, media
        caracter resposta

        faca
        {
            escreva("Informe a nota 1: ")
            leia(nota1)

            escreva("Informe a nota 2: ")
            leia(nota2)

            media = (nota1 + nota2) / 2
            escreva("A média do aluno é: ", media, "\n")

            escreva("Deseja calcular outra média? (s para sim e n para não): ")
            leia(resposta)	

        } enquanto (resposta == 's')

        escreva("Programa finalizado.\n")
    }
}

/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 68; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */