/*3) Chico tem 1,50m e cresce 0,02 cm por ano, enquanto Zé tem 1,10m e cresce 0,03 cm por ano.
Construa um algoritmo que calcule e imprima quantos anos serão necessários para
que Zé seja maior que Chico. */

    

programa
{
	funcao inicio()
	{
     real alturaChico
     real alturaZe
     inteiro cont
     
     alturaChico=1.5
     alturaZe=1.10
     cont=0
	
	enquanto (alturaChico >= alturaZe )
		{
		 
	

		alturaChico = alturaChico+(0.02)
		alturaZe = alturaZe+(0.03)

		escreva ("\n Altura Chico ",alturaChico, " e Altura Zé ",alturaZe, " no ano : ",cont) 



    		cont++
		}
	    
    		escreva ("\n Zé será maior que Chico no ano : ",cont) 
    
    }    
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 175; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */