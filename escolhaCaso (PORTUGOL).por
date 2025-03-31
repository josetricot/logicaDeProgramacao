programa
{
	
	funcao inicio()
	{

	real salario
	inteiro idade
	caracter genero
	cadeia nome, sobrenome
	
	escreva("Digite seu nome\n")
	leia(nome)
	escreva("Escreva seu sobrenome\n")
	leia(sobrenome)
	escreva("Qual a sua idade\n")
	leia(idade)
	escreva("Qual seu salário\n")
	leia(salario)
	
	escreva("Digite F para gênero Feminimo ou M para Masculino")
	leia(genero)
		
		escolha (genero) {
       		caso 'F':
           	escreva(nome, " ", sobrenome, " - Sexo: Feminino - Salário: ", salario, "\n")
           pare
           
       	caso 'M':
          	escreva(nome, " ", sobrenome, " - Sexo: Masculino - Salário: ", salario, "\n")
          pare
                
       	caso contrario:
          	escreva("Opção inválida para gênero!\n")
   		}
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 710; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */