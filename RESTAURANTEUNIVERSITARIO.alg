//Em uma pesquisa feita com 5 alunos frequentadores do R.U. de uma institui��o de ensino,  perguntou-se o nome do aluno, quantas refei��es fez no m�s anterior e como avalia a refei��o (O-�tima, B-bom, R-regular e P-p�ssima). Caso o usu�rio informe uma letra inv�lida, o programa deve exibir uma mensagem de erro e solicitar a entrada novamente, at� que uma letra v�lida seja digitada.
//Ao final, o programa deve informar:
// a) o n�mero de alunos que fez menos de 10 refei��es no m�s anterior;
// b) o n�mero de alunos que fez entre 10 e 20 refei��es;
// c) o n�mero de alunos que fez mais de 20 refei��es identificando seus respectivos nomes;
//d) a porcentagem de cada avalia��o;
//e) o n�mero de alunos que avaliaram a refei��o como P-p�ssima e que fizeram menos de 10 refei��es.

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
   // Inicializa��o das vari�veis
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
       escreva ("Digite o nome do ", i, "� aluno: ")
       leia (aluno[i].nome)
       escreva ("Digite o n�mero de refei��es: ")
       leia (aluno[i].quantRefeicoes)

       escreva("Digite a avalia��o (O-�tima, B-bom, R-regular, P-p�ssima): ")
       leia (aluno[i].avaliacao)

       enquanto (aluno[i].avaliacao <> "O") e
              (aluno[i].avaliacao <> "o") e
              (aluno[i].avaliacao <> "B") e
              (aluno[i].avaliacao <> "b") e
              (aluno[i].avaliacao <> "R") e
              (aluno[i].avaliacao <> "r") e
              (aluno[i].avaliacao <> "P") e
              (aluno[i].avaliacao <> "p") faca
           escreval ("Avalia��o inv�lida! Digite somente O, B, R ou P")
           escreva("Digite novamente: ")
           leia (aluno[i].avaliacao)
       fimenquanto
   fimpara

   para i de 1 at� 5 faca
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

      se (aluno[i].avaliacao = "O") ou (aluno[i].avaliacao = "o") entao
         avalicoesO <- avalicoesO + 1
      senao
         se (aluno[i].avaliacao = "B") ou (aluno[i].avaliacao = "b") entao
            avalicoesB <- avalicoesB + 1
         senao
            se (aluno[i].avaliacao = "R") ou (aluno[i].avaliacao = "r") entao
               avalicoesR <- avalicoesR + 1
            senao
               se (aluno[i].avaliacao = "P") ou (aluno[i].avaliacao = "p") entao
                  avalicoesP <- avalicoesP + 1
                  se (aluno[i].quantRefeicoes < 10) entao
                     avaliacaoPeMenos10Ref <- avaliacaoPeMenos10Ref + 1
                  fimse
               fimse
            fimse
         fimse
      fimse
   fimpara

   escreval("a) N�mero de alunos que fizeram menos de 10 refei��es: ", menosDezRef)
   escreval("b) N�mero de alunos que fizeram entre 10 e 20 refei��es: ", entreDezEvinteRef)
   escreval("c) N�mero de alunos que fizeram mais de 20 refei��es: ", maisDeVinteRef)

   se maisDeVinteRef > 0 entao
      escreval("   Nomes dos alunos que fizeram mais de 20 refei��es:")
      para i de 1 at� maisDeVinteRef faca
         escreval("   - ", vetNomeAlunoAvaliacaoMaior20[i])
      fimpara
   fimse

   escreval("d) Porcentagem de cada avalia��o:")
   escreval("   �tima (O): ", (avalicoesO*100)/5, "%")
   escreval("   Bom (B): ", (avalicoesB*100)/5, "%")
   escreval("   Regular (R): ", (avalicoesR*100)/5, "%")
   escreval("   P�ssima (P): ", (avalicoesP*100)/5, "%")

   escreval("e) N�mero de alunos que avaliaram como P-p�ssima e fizeram menos de 10 refei��es: ", avaliacaoPeMenos10Ref)
Fimalgoritmo