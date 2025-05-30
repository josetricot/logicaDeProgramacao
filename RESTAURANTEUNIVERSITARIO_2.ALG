//Em uma pesquisa feita com 5 alunos frequentadores do R.U. de uma instituição de ensino,  perguntou-se o nome do aluno, quantas refeições fez no mês anterior e como avalia a refeição (O-ótima, B-bom, R-regular e P-péssima). Caso o usuário informe uma letra inválida, o programa deve exibir uma mensagem de erro e solicitar a entrada novamente, até que uma letra válida seja digitada.
//Ao final, o programa deve informar:
// a) o número de alunos que fez menos de 10 refeições no mês anterior;
// b) o número de alunos que fez entre 10 e 20 refeições;
// c) o número de alunos que fez mais de 20 refeições identificando seus respectivos nomes;
//d) a porcentagem de cada avaliação;
//e) o número de alunos que avaliaram a refeição como P-péssima e que fizeram menos de 10 refeições.


Algoritmo "RU"
Tipo
   cadastro = registro
      nome: caractere
      quantRefeicoes: inteiro
      avaliacao: caractere
   FimRegistro
Var
   aluno: vetor [1..5] de cadastro
   vetNomeAlunoAvaliacaoMaior20: vetor [1..5] de caractere
   avalicoesO, avalicoesB, avalicoesR, avalicoesP: inteiro
   i, menosDezRef, entreDezEvinteRef, maisDeVinteRef: inteiro
   avaliacaoPeMenos10Ref: inteiro
   indiceMaior20: inteiro
Inicio
   // Inicialização das variáveis
   menosDezRef <- 0
   entreDezEvinteRef <- 0
   maisDeVinteRef <- 0
   avalicoesO <- 0
   avalicoesB <- 0
   avalicoesR <- 0
   avalicoesP <- 0
   avaliacaoPeMenos10Ref <- 0
   indiceMaior20 <- 1

   para i de 1 ate 5 faca
       escreva ("Digite o nome do ", i, "º aluno: ")
       leia (aluno[i].nome)
       escreva ("Digite o número de refeições: ")
       leia (aluno[i].quantRefeicoes)

       repita
           escreva("Digite a avaliação (O-ótima, B-bom, R-regular, P-péssima): ")
           leia (aluno[i].avaliacao)

           se (aluno[i].avaliacao <> "O") e
              (aluno[i].avaliacao <> "o") e
              (aluno[i].avaliacao <> "B") e
              (aluno[i].avaliacao <> "b") e
              (aluno[i].avaliacao <> "R") e
              (aluno[i].avaliacao <> "r") e
              (aluno[i].avaliacao <> "P") e
              (aluno[i].avaliacao <> "p") entao
               escreval ("Avaliação inválida! Digite somente O, B, R ou P")
           fimse
       ate (aluno[i].avaliacao = "O") ou (aluno[i].avaliacao = "o") ou
           (aluno[i].avaliacao = "B") ou (aluno[i].avaliacao = "b") ou
           (aluno[i].avaliacao = "R") ou (aluno[i].avaliacao = "r") ou
           (aluno[i].avaliacao = "P") ou (aluno[i].avaliacao = "p")
   fimpara

   para i de 1 ate 5 faca
      se (aluno[i].quantRefeicoes < 10) entao
         menosDezRef <- menosDezRef + 1
      senao
         se (aluno[i].quantRefeicoes <= 20) entao
            entreDezEvinteRef <- entreDezEvinteRef + 1
         senao
            maisDeVinteRef <- maisDeVinteRef + 1
            vetNomeAlunoAvaliacaoMaior20[indiceMaior20] <- aluno[i].nome
            indiceMaior20 <- indiceMaior20 + 1
         fimse
      fimse

      escolha (aluno[i].avaliacao)
         caso "O", "o":
            avalicoesO <- avalicoesO + 1
         caso "B", "b":
            avalicoesB <- avalicoesB + 1
         caso "R", "r":
            avalicoesR <- avalicoesR + 1
         caso "P", "p":
            avalicoesP <- avalicoesP + 1
            se (aluno[i].quantRefeicoes < 10) entao
               avaliacaoPeMenos10Ref <- avaliacaoPeMenos10Ref + 1
            fimse
      fimescolha
   fimpara

   escreval("a) Número de alunos que fizeram menos de 10 refeições: ", menosDezRef)
   escreval("b) Número de alunos que fizeram entre 10 e 20 refeições: ", entreDezEvinteRef)
   escreval("c) Número de alunos que fizeram mais de 20 refeições: ", maisDeVinteRef)

   se maisDeVinteRef > 0 entao
      escreval("   Nomes dos alunos que fizeram mais de 20 refeições:")
      para i de 1 até maisDeVinteRef faca
         escreval("   - ", vetNomeAlunoAvaliacaoMaior20[i])
      fimpara
   fimse

   escreval("d) Porcentagem de cada avaliação:")
   escreval("   Ótima (O): ", (avalicoesO*100)/5, "%")
   escreval("   Bom (B): ", (avalicoesB*100)/5, "%")
   escreval("   Regular (R): ", (avalicoesR*100)/5, "%")
   escreval("   Péssima (P): ", (avalicoesP*100)/5, "%")

   escreval("e) Número de alunos que avaliaram como P-péssima e fizeram menos de 10 refeições: ", avaliacaoPeMenos10Ref)
Fimalgoritmo
