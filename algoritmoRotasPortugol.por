/* Com objetivo futuro de criar um aplicativo de rotas para transporte urbano, que visa acessibilidade e utiliza avisos sonoros,  
criamos o algoritmo.

Trata-se de uma versão simplificada, compatível com o estudado até o momento no primeiro semestre do curso.

Um aplicativo de rotas, constantemente verifica a posição atual do veículo com relação ao destino, que no caso são os pontos de parada.
Pensando de uma forma simplificada, sempre haverá comparação entre dois pontos e será utilizada uma fórmula.

O algoritmo criado permite o cadastro de dois pontos com longitude e latitude, e caso a distância entre os dois pontos seja menor
que 100 metros emite um aviso sonoro. Ao final, o usuário tem a opção de sair ou continuar testando dois pontos.

Inicialmente pensamos em utilizar a fórmula Euclidiana. Porém, para utilizá-la, precisaríamos de medidas lineares.
Descobrimos a fórmula de Haversine, utilizada por sistemas de navegação modernos (leva em consideração a curvatura da Terra).
Utilizando a fórmula no algoritmo, conseguimos inserir os dados de latitudes e longitudes do Google Maps, por exemplo.
O Google Maps fornece dados de longitude e latitude em graus. O algoritmo converte os valores em graus para radianos durante o cálculo,
para obter a distância em metros (sem precisar de conversões adicionais para um sistema linear, como no caso do uso da fórmula Euclidiana).

No Portugol, a fórmula foi adaptada devido às limitações das bibliotecas (falta de atan2 e asin da Linguagem C, por exemplo).

Para fins de comparação, criamos um algoritmo com uso da fórmula original em C, onde obtivemos precisão exata.
No caso do Portugol, para distâncias até 100 metros (caso de uso do código), o erro é insignificante (< 0,1%).
Para distâncias maiores (ex: 1.000 km), o erro aumenta, pois a aproximação perde validade.

O Portugol tem ainda a limitação de entrada de dados, não sendo possível colar diretamente do Google Maps.
Sugestão: Abra um bloco de notas para colar os dados do Google Maps.

Instruções: No Google Maps, escolha um ponto, clique com o botão direito. A primeira opção que aparece são os dados de localização 
longitude e latitude. Clique na informação com o botão esquerdo. Os dados serão copiados para área de transferência,
podendo ser colados em um bloco de notas, por exemplo.

Preencha as informações no algoritmo e verifique a resposta gerada.

Exemplo de dados para serem inseridos:
Ponto 1: -30.00959673309183, -51.18936839365057
Ponto 2: -30.009707218271284, -51.18931735956996
Resposta: Distância 13.23 metros, aviso sonoro e mensagem para usuário.

Observação: Para a reprodução do som, o arquivo .mp3 deve estar na mesma pasta do arquivo .por do Portugol.

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
        cadeia nome_ponto1, nome_ponto2 // Nomes dos pontos
        real lat_ponto1, lon_ponto1, lat_ponto2, lon_ponto2 // Coordenadas dos pontos
        real distancia = 0.0 // Distância calculada entre os pontos
        cadeia continuar // Variável para controle do loop
        
        real PI = 3.141592653589793 // Valor de PI
        real RAIO_TERRA = 6371000.0 // Raio da Terra em metros (valor real)

	   inteiro som = s.carregar_som("simple-notification-152054.mp3") //importação do som para memória para reproduzir mais tarde
        
        faca
        {
            // Cadastro do Ponto 1
            escreva("Digite o nome do Ponto 1: ")
            leia(nome_ponto1)
            escreva("Digite a latitude do Ponto 1 (em graus): ")
            leia(lat_ponto1)
            escreva("Digite a longitude do Ponto 1 (em graus): ")
            leia(lon_ponto1)

            // Cadastro do Ponto 2
            escreva("Digite o nome do Ponto 2: ")
            leia(nome_ponto2)
            escreva("Digite a latitude do Ponto 2 (em graus): ")
            leia(lat_ponto2)
            escreva("Digite a longitude do Ponto 2 (em graus): ")
            leia(lon_ponto2)
            
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
            escreva("\nA distância entre ", nome_ponto1, " e ", nome_ponto2, " é: ", distancia, " metros\n")
            
            // Aviso de proximidade
            se (distancia <= 100.0) {
                escreva("Aviso: Você está próximo de ", nome_ponto2, "\n")
                
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
 
/*Esta versão utiliza apenas funções matemáticas disponíveis no Portugol Studio
e funciona sem erros. A fórmula de Haversine foi adaptada para usar apenas:

mat.seno()

mat.cosseno()

mat.potencia()

Solução para falta de arcseno/atan2:
Utilizamos uma aproximação direta usando 2.0 * mat.raiz(a) que funciona bem para distâncias curtas.
Esta é uma simplificação válida quando 'a' é pequeno (para distâncias até 1000km).
Além disso Função raiz(): Substituí por mat.potencia(a, 0.5) que é equivalente à raiz quadrada*/
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 6012; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */