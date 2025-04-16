programa {
  funcao inicio() {
    
    inteiro valor1, valor2, i

    escreva("Digite o primeiro valor: ")
    leia(valor1)

    escreva("Digite o segundo valor: ")
    leia(valor2)
    
    se (valor1 > valor2) {
      escreva("\nO maior valor é: ", valor1,"\n")
      escreva("\nOrdem crescente: ")

      i = valor2

      para (inteiro i = valor2; i <= valor1; i++)  
        escreva (i," ")
     

       escreva("\nOrdem decrescente: ")

      para (inteiro i = valor1; i >= valor2; i--)  
        escreva (i," ")
    }

    senao se (valor1 < valor2) {
      escreva("\nO maior valor é: ", valor2,"\n")
      escreva("\nOrdem crescente: ")

      i = valor1

      para (inteiro i = valor1; i <= valor2; i++)  
        escreva (i," ")
      
       escreva("\nOrdem decrescente: ")

      para (inteiro i = valor2; i >= valor1; i--)  
        escreva (i," ")       
    }
    senao {
      escreva("Os valores são iguais.")
    }
  }
}