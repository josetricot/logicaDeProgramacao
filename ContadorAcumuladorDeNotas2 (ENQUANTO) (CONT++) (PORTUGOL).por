programa
{
    funcao inicio()
    {
        inteiro cont, numAlunos
        real nota1, nota2, media, totalMedia
        cadeia nome

        totalMedia = 0

        escreva("\nQuantos alunos deseja inserir? ")
        leia(numAlunos)

        cont = 0

        enquanto (cont < numAlunos)
        {
            escreva("\nDigite seu nome: ")
            leia(nome)

            escreva("\nDigite a primeira nota: ")
            leia(nota1)

            escreva("\nDigite a segunda nota: ")
            leia(nota2)

            media = (nota1 + nota2) / 2

            escreva("\n", nome, ", sua média é: ", media, "\n")

            totalMedia = totalMedia + media

            cont++
        }

        totalMedia = totalMedia / numAlunos

        escreva("\nA média da turma é: ", totalMedia, "\n\n")
    }
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 812; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */