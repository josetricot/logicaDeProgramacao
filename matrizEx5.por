/*Matriz
 * 
5) Crie um algoritmo que leia uma matriz 3x3, imprima a matriz e  calcule a soma da diagonal principal e da diagonal secundária.

*/

programa
{
	
	funcao inicio()
	{
		real matriz[3][3]
		inteiro i, j
		real somaDiaglPrinc=0.0, somaDiagSec=0.0

		escreva("Entre com os dados da matriz 3x3:\n")
		para (i=0;i<3;i++){
			para (j=0;j<3;j++){
				escreva("matriz[",i,"][",j,"]: ")
				leia(matriz[i][j])
			}
		}
	   	escreva("\nMatriz informada:\n")
        	para (i=0;i<3;i++){
            	para (j=0;j<3;j++){
                	escreva(matriz[i][j], " ")
            	}
          	escreva("\n")
        	}
     	para(i=0;i<3;i++){
      	somaDiaglPrinc=somaDiaglPrinc+matriz[i][i]
      	somaDiagSec=somaDiagSec+matriz[i][2-i]
    		}	   
		escreva("A soma da Diagonal Princial é : ",somaDiaglPrinc,"\n")
		escreva("A soma da Diagonal Secundária é : ",somaDiagSec,"\n")
	}
}


/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 875; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */