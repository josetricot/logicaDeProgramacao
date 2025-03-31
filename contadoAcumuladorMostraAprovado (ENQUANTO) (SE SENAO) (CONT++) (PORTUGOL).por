programa
{
    funcao inicio()
    {
        inteiro cont
        real nota1, nota2, media, totalMedia
        cadeia nome

        cont = 0
        totalMedia = 0

        enquanto (cont < 40)
        	{
            escreva("\nDigite seu nome: ")
            leia(nome)

            escreva("Digite a primeira nota: ")
            leia(nota1)

            escreva("Digite a segunda nota: ")
            leia(nota2)

            media = (nota1 + nota2) / 2

            escreva(nome, ", sua média é: ", media, "\n")
            se (media>=7){
            	escreva("Aprovado!\n") 
            }
		  senao {
		  	escreva("Reprovado!\n")
		  }
		  
			
            cont++

		  totalMedia=(totalMedia+media)/cont

		  escreva("\nA média da turma é: ",totalMedia)
        
    		}
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 632; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */