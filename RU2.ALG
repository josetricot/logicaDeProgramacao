Algoritmo "RU"
Tipo
   dados_al = registro
      nome: caractere
      refe: inteiro
      ava: caractere
   fimregistro

Var
   aluno: vetor [1..3] de dados_al
   vetVinte: vetor[1..3] de caracter
   i,j, menosDez, dezVinte, maisVinte, menosDezP: inteiro
   o,b,r,p:inteiro
Inicio
   menosDez <- 0
   dezVinte <- 0
   maisVinte <- 0
   o <- 0
   b <- 0
   r <- 0
   p <- 0
   menosDezP <- 0
   escreval("***********************************************")
   escreval("***********************************************")
   escreval("")
   escreval("      PESQUISA - R. U.")
   escreval("")
   escreval("***********************************************")
   escreval("***********************************************")
   escreval("")
   para i de 1 ate 3 faca
      escreval("Digite o nome do aluno: ")
      leia(aluno[i].nome)
      escreva("Quantas refeições fez no mês anterior? ")
      leia(aluno[i].refe)
      escreva("Como classifica:")
      escreval ("O:Ótimo, B:Bom, R:Regular ou P:Péssimo")
      leia(aluno[i].ava)
      //transforma o que foi digitado em letras maiúsculas
      aluno[i].ava <- maiusc(aluno[i].ava)
      // controle de entrada de dados
      enquanto (aluno[i].ava <> "O")e (aluno[i].ava <> "B")e (aluno[i].ava <> "P") e (aluno[i].ava <> "R")faca
         escreval("Informe uma opção válida")
         escreval ("Digite O:Ótimo, B:Bom, R:Regular e P:Péssimo")
         leia(aluno[i].ava)
         //transforma o que foi digitado em letras maiúsculas
         aluno[i].ava <- maiusc(aluno[i].ava)
      fimenquanto

      se aluno[i].refe > 20 entao
         maisVinte <- maisVinte + 1
      fimse
      se (aluno[i].refe >= 10) e  (aluno[i].refe <= 20)entao
         dezVinte <- dezVinte + 1
         //vetor para armazenar os nomes alunos entre 10 e 20 refeições
         vetVinte[dezVinte]:= aluno[i].nome
      fimse
      se aluno[i].refe < 10 entao
         menosDez <- menosDez + 1
      fimse

      escolha aluno[i].ava
      caso "O"
         o <- o + 1
      caso "B"
         b <- b + 1
      caso  "R"
         r <- r + 1
      caso  "P"
         p <- p + 1
      fimescolha
      se (aluno[i].refe < 10) e (aluno[i].ava = "P") entao
         menosDezP <- menosDezP + 1
      fimse
   fimpara
   escreval(menosDez, " alunos fizeram menos de 10 refeições")
   escreval(dezVinte, " alunos fizeram entre 10 e 20 refeições")
   escreval("Seus nomes são:" )
   para j de 1 ate dezVinte faca
      escreval(j, "-", vetVinte[j])
   fimpara
   escreval(maisVinte, " alunos fizeram mais de 20 refeições")
   escreval(o*100/i, "% dos alunos avaliaram como ótima")
   escreval(b*100/i, "% dos alunos avaliaram como boa")
   escreval(r*100/i, "% dos alunos avaliaram como regular")
   escreval(p*100/i, "% dos alunos avaliaram como péssima")
   escreval(p," alunos avaliaram como péssima e desses", menosdezp, " fizeram menos de 10 refeições")
Fimalgoritmo