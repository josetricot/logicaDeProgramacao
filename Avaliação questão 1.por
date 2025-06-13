programa {
    caracter tamanho, pix
    inteiro quantidade = 0, compra = 0
    real totalParcial = 0.0, valorTotal = 0.0

    funcao inicio() {
        escreva("\nBem-Vindo!")
        escreva("\nFábrica de Camisetas: P R$80,00 | M R$90,00 | G R$100,00")

        faca {
            totalParcial = 0.0 // Reset do valor parcial
            escreva("\nEscolha o tamanho da camisa (P, M, G, ou N para sair): ")
            leia(tamanho)

            se (tamanho == 'N' ou tamanho == 'n') {
                escreva("\nVendas Finalizadas!")
            } senao {
                escreva("\nQuantidade de camisetas do tamanho ", tamanho, ": ")
                leia(quantidade)

                escolha(tamanho) {
                    caso 'p':
                    caso 'P':
                        totalParcial = quantidade * 80
                        escreva("\n", quantidade, " camiseta(s) P: R$ ", totalParcial)
                        compra++ // Incrementa apenas para tamanhos válidos
                        pare
                    caso 'm':
                    caso 'M':
                        totalParcial = quantidade * 90
                        escreva("\n", quantidade, " camiseta(s) M: R$ ", totalParcial)
                        compra++
                        pare
                    caso 'g':
                    caso 'G':
                        totalParcial = quantidade * 100
                        escreva("\n", quantidade, " camiseta(s) G: R$ ", totalParcial)
                        compra++
                        pare
                    caso contrario:
                        escreva("\nTamanho inválido! Use P, M ou G.")
                }

                // Se a compra é válida (P/M/G), pergunta sobre o pix
                se (totalParcial > 0) {
                    escreva("\nPagamento no pix (S/N)? ")
                    leia(pix)

                    se (pix == 'S' ou pix == 's') {
                        totalParcial = totalParcial * 0.95 // 5% de desconto
                        escreva("\nDesconto aplicado! Total: R$ ", totalParcial)
                    }
                    valorTotal += totalParcial
                }
            }
        } enquanto (tamanho != 'N' e tamanho != 'n') // Aceita 'N' e 'n'

        escreva("\nTotal de pedidos: ", compra)
        escreva("\nValor total das vendas: R$ ", valorTotal)
    }
}