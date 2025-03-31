/*aula enquanto faça... enquanto exemplo 2*/

programa
{
    funcao inicio()
    {
        real nota1, nota2, media, totalMedias, mediaTurma
        caracter resposta
        inteiro cont

        cont=0
	   totalMedias = 0
        

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

            cont++

		  totalMedias = totalMedias+media
   
    	       mediaTurma = totalMedias / cont		
            

        } enquanto (resposta == 's')

        escreva("Programa finalizado.\n")

    	
	   
	   escreva("\nO número total de alunos a é: ", cont, "\n")
	   escreva("\nA média da turma é: ", mediaTurma, "\n")
    
        
    }

    
}

/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 349; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */