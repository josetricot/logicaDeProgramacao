/*
Algoritmo 3
Condições de conclusão
Leia 2 valores inteiros. Verifique qual valor é menor e qual é maior. Mostre todos os valores entre o menor e maior de forma crescente (do menor número para o maior), em seguida, mostre todos os valores em ordem decrescente (do maior para o menor). OBS: inclua os valores informados na resposta.
Entrada
2 números inteiros.
Saída
impressão de todos os números em ordem crescente e em seguida na ordem decrescente. Imprima a ordem crescente na mesma linha, separados por espaço. Imprima a ordem decrescente na outra linha, separados por espaço. */

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
