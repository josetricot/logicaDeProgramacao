//Registro - Exerc�cio 1
//Utilizando REGISTRO, fa�a um algoritmo que leia o nome dos 80 funcion�rios
// da empresa XYZ e suas respectivas idades. Ao final, mostre o nome do
// funcion�rio mais velho e do mais novo da empresa.


Algoritmo "nomeIdadeFuncionariosXYZ"
Tipo
   cadastro = registro
      nome:caractere
      idade:inteiro
   Fimregistro
Var
   funcionario : vetor [1..3] de cadastro
   maiorIdade, menorIdade, i: inteiro
   nomeMaiorIdade, nomeMenorIdade: caractere
Inicio
   para i de 1 at� 3 faca
      escreva ("Digite no nome do funcion�rio: ")
      leia (funcionario[i].nome)
      escreva ("Digite a idade fo funcion�rio: ")
      leia (funcionario[i].idade)
   fimpara

   maiorIdade:=funcionario[1].idade
   nomeMaiorIdade:=funcionario[1].nome
   menorIdade:=funcionario[1].idade
   nomeMenorIdade:=funcionario[1].nome

   para i de 2 at� 3 faca
      se (funcionario[i].idade > maiorIdade) entao
         maiorIdade:=funcionario[i].idade
         nomeMaiorIdade:=funcionario[i].nome
      fimse
         se (funcionario[i].idade<menorIdade) entao
            menorIdade:=funcionario[i].idade
            nomeMenorIdade:=funcionario[i].nome
      fimse
         fimpara

         escreval("A maior idade �: ",maiorIdade, " de ",nomeMaiorIdade)
         escreval("A menor idade �: ",menorIdade, " de ",nomeMenorIdade)

Fimalgoritmo