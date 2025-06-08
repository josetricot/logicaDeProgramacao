/* Com objetivo futuro de criar um aplicativo de rotas para transporte urbano, que visa acessibilidade e utiliza avisos sonoros,  
desenvolvemos o programa.

Trata-se de uma versão simplificada, compatível com o estudado até o momento no primeiro semestre do curso.

Um aplicativo de rotas, constantemente verifica a posição atual do veículo com relação ao destino, que no caso são os pontos de parada.
Pensando de uma forma simplificada, sempre haverá comparação entre dois pontos e será utilizada uma fórmula.

O algoritmo criado anteriormente permitia o cadastro de dois pontos com longitude e latitude, e caso a distância entre os dois pontos seja menor
que 100 metros emite um aviso sonoro. Ao final, o usuário tem a opção de sair ou continuar testando dois pontos.
Já a versão com vetores dá a opção de inserir o nome de um ponto e suas respectivas coordenadas e comparar com pontos pré-cadastrados.
Definimos um novo limite de aviso sonoro de 100 para 200 metros.

O Portugol tem a limitação de entrada de dados, não sendo possível colar diretamente do Google Maps.
Sugestão: Abra um bloco de notas para colar os dados do Google Maps.

***Instruções***: No Google Maps, escolha um ponto, clique com o botão direito. A primeira opção que aparece são os dados de localização 
longitude e latitude. Clique na informação com o botão esquerdo. Os dados serão copiados para área de transferência,
podendo ser colados em um bloco de notas, por exemplo.

Preencha as informações durante a execução do programa e verifique a resposta gerada.

Exemplo de dados para serem inseridos:
Ponto 1: -30.0264126178852, -51.221433182595945
Ponto 2: - Digite 1 - IFRS Campus Porto Alegre
Resposta: Distância 86.37 metros, aviso sonoro e mensagem para usuário.

***Observação Importante!***: Para a reprodução do som, o arquivo .mp3 deve estar na mesma pasta do arquivo .por do Portugol.

Disciplina: Lógica de Programação IFRS Porto Alegre
Profa. Dra. Fabrícia Py Tortelli Noronha
Coordenador: Prof. Dr. Marcelo Schmitt
Discentes: Gustavo Ferreira Bassani, José Athaualpa Kolesny Tricot */

programa
{
    inclua biblioteca Matematica --> mat
    inclua biblioteca Util --> u
    inclua biblioteca Sons --> s
    
    funcao inicio()
    {
        // Pontos pré-cadastrados
        cadeia vetor_a[10] = {
            "IFRS Campus Porto Alegre",
            "Praça da Alfândega",
            "Mercado Público",
            "Usina do Gasômetro",
            "Largo Glênio Peres",
            "Santander Cultural",
            "Casa de Cultura Mário Quintana",
            "Museu de Arte do RS",
            "Theatro São Pedro",
            "Biblioteca Pública"
        }
        
        real vetor_b[10] = {
            -30.02569696216427,   // IFRS
            -30.03472222222222,   // Praça da Alfândega
            -30.02777777777778,   // Mercado Público
            -30.03194444444444,   // Usina do Gasômetro
            -30.03416666666667,  // Largo Glênio Peres
            -30.03361111111111,   // Santander Cultural
            -30.03277777777778,   // Casa de Cultura
            -30.03500000000000,   // MARGS
            -30.03305555555556,   // Theatro São Pedro
            -30.03638888888889    // Biblioteca Pública
        }
        
        real vetor_c[10] = {
            -51.22108432154327,  // IFRS
            -51.22861111111111,   // Praça da Alfândega
            -51.22888888888889,   // Mercado público
            -51.23805555555556,  // Usina do Gasômetro
            -51.22972222222222,   // Largo Glênio Peres
            -51.22833333333334,   // Santander Cultural
            -51.23083333333333,   // Casa de Cultura
            -51.22888888888889,   // MARGS
            -51.22972222222222,  // Theatro São Pedro
            -51.23138888888889   // Biblioteca Pública
        }
        
        cadeia nome_ponto1, nome_ponto2 // Nomes dos pontos
        real lat_ponto1, lon_ponto1, lat_ponto2, lon_ponto2 // Coordenadas dos pontos
        real distancia = 0.0 // Distância calculada entre os pontos
        cadeia continuar // Variável para controle do loop
        
        real PI = 3.141592653589793 // Valor de PI
        real RAIO_TERRA = 6371000.0 // Raio da Terra em metros (valor real)

	   inteiro som = s.carregar_som("simple-notification-152054.mp3") //importação do som para memória para reproduzir mais tarde
	   inteiro escolha_ponto, i
        
        faca
        {
            // Usário insere 1 ponto  *Em um aplicativo com acesso ao GPS, teoricamente seria algo automatizado... inserindo a posição atual.
            escreva("Digite o nome do Ponto 1: ")
            leia(nome_ponto1)
            escreva("Digite a latitude do Ponto 1 (em graus): ")
            leia(lat_ponto1)
            escreva("Digite a longitude do Ponto 1 (em graus): ")
            leia(lon_ponto1)

            // Listar pontos pré-cadastrados
            escreva("\n--- Pontos pré-cadastrados ---\n")
            para(i = 0; i < 10; i++) {
                escreva(i+1, ". ", vetor_a[i], "\n")
            }
            
            // Seleção do ponto para comparação
            faca {
                escreva("\nEscolha um ponto (1-10): ")
                leia(escolha_ponto)
                se(escolha_ponto < 1 ou escolha_ponto > 10) {
                    escreva("Opção inválida! Tente novamente.\n")
                }
            } enquanto(escolha_ponto < 1 ou escolha_ponto > 10)

            // Ajuste do índice para o vetor
            i = escolha_ponto -1
            nome_ponto2 = vetor_a[i]
            lat_ponto2 = vetor_b[i]
            lon_ponto2 = vetor_c[i]
            
            
            // Converter para radianos
            lat_ponto1 = lat_ponto1 * (PI / 180.0)
            lon_ponto1 = lon_ponto1 * (PI / 180.0)
            lat_ponto2 = lat_ponto2 * (PI / 180.0)
            lon_ponto2 = lon_ponto2 * (PI / 180.0)
            
            // Diferenças entre coordenadas
            real delta_lat = lat_ponto2 - lat_ponto1
            real delta_lon = lon_ponto2 - lon_ponto1
            
            // Fórmula de Haversine corrigida
            real seno_metade_lat = mat.seno(delta_lat / 2.0)
            real seno_metade_lon = mat.seno(delta_lon / 2.0)
            
            real a = (seno_metade_lat * seno_metade_lat) + 
                    (mat.cosseno(lat_ponto1) * mat.cosseno(lat_ponto2) * 
                    seno_metade_lon * seno_metade_lon)
            
            // Cálculo da distância usando raiz quadrada corretamente
            real raiz_a = mat.potencia(a, 0.5) // Alternativa para raiz quadrada
            real angulo_central = 2.0 * raiz_a
            distancia = RAIO_TERRA * angulo_central
            
            // Exibir resultado
            escreva("\nCalculando a distância entre ", nome_ponto1, " e " , nome_ponto2)

		  para(inteiro k = 0; k < 3; k++) {
		  	escreva(".")
    		  // Loop de delay
    		  		para(inteiro j = 0; j < 700000000; j++) {
            // Loop vazio - apenas para criar delay
    		  		}
		  }		
            escreva("\nA distância entre ", nome_ponto1, " e ", nome_ponto2, " é: ", distancia, " metros\n")
            
            // Aviso de proximidade
            se (distancia <= 200.0) {
                escreva("\n***Aviso: Você está próximo de ", nome_ponto2, "***\n")
                
                s.reproduzir_som(som, falso) //som toca mas não fica repetindo, por isso o "falso"
			 s.definir_volume(100) //definição de volume
		      u.aguarde(10000) //biblioteca do últil
		      s.interromper_som(som) //para a música depois do tempo 10000
            }
		  // link do vídeo utilizado como referência para fazer o som https://www.youtube.com/watch?v=sg4Q9Hhdzbk
            
            // Perguntar se deseja continuar
            escreva("\nDeseja calcular outra distância? (S/N): ")
            leia(continuar)
        }
        enquanto (continuar == "S" ou continuar == "s")
        
        escreva("\nPrograma finalizado. Obrigado!\n")

        escreva("\nDisciplina: Lógica de Programação IFRS Porto Alegre")
	   escreva("\nProfa. Dra. Fabrícia Py Tortelli Noronha")
	   escreva("\nCoordenador: Prof. Dr. Marcelo Schmitt")
	   escreva("\nDiscentes: Gustavo Ferreira Bassani, José Athaualpa Kolesny Tricot")     
    }
}

/*Outras observações:

Inicialmente pensamos em utilizar a fórmula Euclidiana. Porém, para utilizá-la, precisaríamos de medidas lineares.
Descobrimos a fórmula de Haversine, utilizada por sistemas de navegação modernos (leva em consideração a curvatura da Terra).
Utilizando a fórmula no algoritmo, conseguimos inserir os dados de latitudes e longitudes do Google Maps, por exemplo.
O Google Maps fornece dados de longitude e latitude em graus. O algoritmo converte os valores em graus para radianos durante o cálculo,
para obter a distância em metros (sem precisar de conversões adicionais para um sistema linear, como no caso do uso da fórmula Euclidiana).

No Portugol, a fórmula foi adaptada devido às limitações das bibliotecas (falta de atan2 e asin da Linguagem C, por exemplo).

Esta versão utiliza apenas funções matemáticas disponíveis no Portugol Studio
e funciona sem erros. A fórmula de Haversine foi adaptada para usar apenas:

mat.seno()

mat.cosseno()

mat.potencia()

Solução para falta de arcseno/atan2:
Utilizamos uma aproximação direta usando 2.0 * mat.raiz(a) que funciona bem para distâncias curtas.
Esta é uma simplificação válida quando 'a' é pequeno (para distâncias até 1000km).
Além disso Função raiz(): Substituí por mat.potencia(a, 0.5) que é equivalente à raiz quadrada

Para fins de comparação, criamos um algoritmo com uso da fórmula original em C, onde obtivemos precisão exata.
No caso do Portugol, para distâncias até 100 metros (caso de uso do código), o erro é insignificante (< 0,1%).
Para distâncias maiores (ex: 1.000 km), o erro aumenta, pois a aproximação perde validade.*/
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 155; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */