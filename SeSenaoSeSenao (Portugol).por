programa
{
    funcao inicio()
    {
        real salario
        inteiro idade
        cadeia nome, sobrenome
        caracter genero

        escreva("Digite seu nome: ")
        leia(nome)

        escreva("Digite seu sobrenome: ")
        leia(sobrenome)

        escreva("Qual a sua idade? ")
        leia(idade)

        escreva("Qual seu salário? ")
        leia(salario)

        escreva("Digite F para gênero Feminino ou M para Masculino: ")
        leia(genero)

        se (genero == 'F')
        {
            escreva(nome, " ", sobrenome, " - Sexo: Feminino - Salário: ", salario, "\n")
        }
        senao se (genero == 'M')
        {
            escreva(nome, " ", sobrenome, " - Sexo: Masculino - Salário: ", salario, "\n")
        }
        senao
        {
            escreva("Opção inválida para gênero!\n")
        }
    }
}

/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 848; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */