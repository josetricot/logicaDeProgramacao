/*2) Algoritmo que leia a idade dos 11 jogadores do time de futebol XYZ 
 e ao final informe a média de idade do time.*/

programa
{
    funcao inicio()
    {
        inteiro cont, idade, somaIdades
        real mediaIdade

        cont = 0
        somaIdades = 0

        enquanto (cont < 11)
        {
	   	escreva("\nDigite a idade do jogador: ")
          leia(idade)

          escreva("\nA idade digitada foi: ", idade,"\n")

		somaIdades = somaIdades + idade  

          cont++
       
        }

	   mediaIdade = somaIdades / 11		
	   
	   escreva("\nA média de idade dos jogadores é: ", mediaIdade, "\n")
		
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 408; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */