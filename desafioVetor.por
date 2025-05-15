programa
{
	
	funcao inicio()
	{
		inteiro i, j=0
  		inteiro v[5], vp [5], vpb [5]

    		para (i=0; i<=4; i++){
    		escreva("Informe valor\n")
     	leia (v[i])
    		}
     
     	para (i=0; i<=4; i++){
    			se (v[i] % 2 ==0 ){
      		vp[i]=v[i]
    			}
   		}
   
   		escreva ("\nVetor de números Pares")
  	
  		para (i=0; i<=4; i++){
    		escreva("\n vp[", i,"]:", vp[i])
   		}

		// Preenche vpb apenas com os pares, sem buracos
        	j = 0 // índice para vpb
        	para (i = 0; i < 5; i++) {
            se (vp[i] != 0) {
                vpb[j] = vp[i]
                j++
            }
        	}
        
        	escreva("\n\nVetor sem buracos (apenas pares):")
        	para (i = 0; i < j; i++) {
          	escreva("\n vpb[", i, "]: ", vpb[i])
        	}
    }
}

/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 689; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */