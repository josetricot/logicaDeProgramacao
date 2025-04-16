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

      enquanto(i <= valor1) {
        escreva (i," ")
        i=i+1
      }

       escreva("\nOrdem decrescente: ")

      i= i-1

       enquanto(valor2 <= i) {
        escreva (i," ")
        i=i-1
      }
    }

    senao se (valor2 > valor1) {
      escreva("\nO maior valor é: ", valor2,"\n")
      escreva("\nOrdem crescente: ")

      i = valor1

      enquanto(i <= valor2) {
        escreva (i," ")
        i=i+1
      }

       escreva("\nOrdem decrescente: ")

      i= i-1

       enquanto(valor1 <= i) {
        escreva (i," ")
        i=i-1
      }
    }
    senao {
      escreva("Os valores são iguais.")
    }

  }
}
