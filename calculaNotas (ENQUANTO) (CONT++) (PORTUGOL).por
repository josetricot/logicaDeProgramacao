programa
{
    funcao inicio()
    {
        inteiro cont
        real nota1, nota2, media
        cadeia nome

        cont = 0

        enquanto (cont < 40)
        	{
            escreva("Digite seu nome: ")
            leia(nome)

            escreva("Digite a primeira nota: ")
            leia(nota1)

            escreva("Digite a segunda nota: ")
            leia(nota2)

            media = (nota1 + nota2) / 2

            escreva(nome, ", sua média é: ", media, "\n")

            cont++
        
    		}
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 111; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */