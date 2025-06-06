/*
 Revisão Exer2
 
 MATRIZ: Escreva um programa que leia uma matriz M(5,5), imprima na tela e calcule as somas:
 a) da linha 3 de M
 b) da coluna 2 de M
 c) da diagonal principal
 d) da diagonal secundária
 e) de todos os elementos da matriz M
 Escreva essas somas e a matriz
*/

programa
{
	
	funcao inicio()
	{
	   inteiro matrizA[5][5], somaL3=0, somaC2=0, soma=0, somaDiaglPrinc=0, somaDiagSec=0
        inteiro i, j

        // Entrada de dados
        escreva("Entre com os dados da Matriz:\n")
        para (i = 0; i < 5; i++) {
            para (j = 0; j < 5; j++) {
                escreva("matrizA[", i, "][", j, "]: ")
                leia(matrizA[i][j])
            }
        }

        // Saída da matriz formatada
        escreva("\nA matriz informada é:\n")
        para (i = 0; i < 5; i++) {
            para (j = 0; j < 5; j++) {
                escreva(matrizA[i][j], " ")  // Imprime cada elemento
            }
            escreva("\n")  // Quebra de linha após cada linha da matriz
        }

	   	//calcula a soma da linha 3   	   	
		para (j = 0; j < 5; j++) {
	    	somaL3=somaL3+matrizA[2][j]  
		}
		escreva("\nA soma da lina 3 da matriz é: ",somaL3)

		//calcula a soma da coluna 2  	   	
		para (i = 0; i < 5; i++) {
	    	somaC2=somaC2+matrizA[i][1]  
		}
		escreva("\nA soma da coluna 2 da matriz é: ",somaC2)

         // soma de todos elementos
        	para (i = 0; i < 5; i++) {
            para (j = 0; j < 5; j++) {
 			soma=soma+matrizA[i][j]
            }
        	}
        	escreva("\nA soma dos elementos da matriz é: ", soma)


		para(i=0;i<5;i++){
      	somaDiaglPrinc=somaDiaglPrinc+matrizA[i][i]
      	somaDiagSec=somaDiagSec+matrizA[i][4-i]
    		}	   
		escreva("\nA soma da Diagonal Princial é : ",somaDiaglPrinc)
		escreva("\nA soma da Diagonal Secundária é : ",somaDiagSec,"\n")
		
	}
}

/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 1393; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */