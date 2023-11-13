programa {
  inclua biblioteca Matematica --> Mat

  funcao inicio() {
    inteiro x, y, z, i, m
    inteiro auxId
    real total
    inteiro id[7]
    cadeia nome[7]
    cadeia endereco[7]
    inteiro tel[7]
    cadeia produto[7]
    real valorPedido[7]
    cadeia status[7]


    faca {
      escreva("1 - Cadastrar pedido do cliente:\n")
      escreva("2 - Alterar o status do pedido:\n")
      escreva("3 - Editar as informações de um pedido:\n")
      escreva("4 - Visualizar pedido:\n")
      escreva("5 - Visualizar o valor total de acordo com cada status do pedido:\n")
      escreva("6 - Visualizar o valor em espera a ser recebido e recebido:\n")
      escreva("7 - Listar todos os pedidos:\n")
      escreva("8 - Finalizar o programa:\n")
      escreva("\nOpção: ")

      leia(x)

      escolha (x){
        caso 1:
        limpa()
        escreva("Quantos produtos deseja inserir no sistema: ")
        leia(m)

        para (i = 0; i < m; i++){
          escreva("\nId: ")
          leia(id[i])
          escreva("\nNome: ")
          leia(nome[i])
          escreva("\nEndereço: ")
          leia(endereco[i])
          escreva("\nTel: ")
          leia(tel[i])
          escreva("\nProduto: ")
          leia(produto[i])
          escreva("\nValor Pedido: ")
          leia(valorPedido[i])
          escreva("\nStatus: ")
          leia(status[i])
          limpa()
        }
        pare

        caso 2:
        limpa()
        escreva("Qual id do pedido que deseja alterar Status: ")
        leia(auxId)

        para (i = 0; i <= m; i++){
          se(id[i] == auxId){
            escreva("\nStatus: ")
            leia(status[i])
          }
        }
        limpa()
        pare

        caso 3:
        limpa()
        escreva("Qual id do pedido que deseja editar: ")
        leia(auxId)

        escreva("\nQual campo deseja alterar:\n")
        escreva("1 - Nome:\n")
        escreva("2 - Endereço:\n")
        escreva("3 - Tel:\n")
        escreva("4 - Produto:\n")
        escreva("5 - Valor Pedido:\n")
        escreva("6 - Status:\n")
        escreva("\nOpção: ")
        leia(y)

        escolha (y){
          caso 1:
          para (i = 0; i < m; i++){
            se(id[i] == auxId){
              escreva("\nNome: ")
              leia(nome[i])
            }
          }
          pare

          caso 2:
          para (i = 0; i < m; i++){
            se(id[i] == auxId){
              escreva("\nEndereço: ")
              leia(endereco[i])
            }
          }
          pare

          caso 3:
          para (i = 0; i < m; i++){
            se(id[i] == auxId){
              escreva("\nTel: ")
              leia(tel[i])
            }
          }
          pare

          caso 4:
          para (i = 0; i < m; i++){
            se(id[i] == auxId){
              escreva("\nProduto: ")
              leia(produto[i])
            }
          }
          pare

          caso 5:
          para (i = 0; i < m; i++){
            se(id[i] == auxId){
              escreva("\nValor Pedido: ")
              leia(valorPedido[i])
            }
          }
          pare

          caso 6:
          para (i = 0; i < m; i++){
            se(id[i] == auxId){
              escreva("\nStatus: ")
              leia(status[i])
            }
          }
          pare
        }
        limpa()
        pare

        caso 4:
        limpa()
        escreva("Qual id do pedido que deseja visualizar: ")
        leia(auxId)
        para (i = 0; i < m; i++){
          se(id[i] == auxId){
            escreva("\nNome: ", nome[i])
            escreva("\nEndereço: ", endereco[i])
            escreva("\nTel: ", tel[i])
            escreva("\nProduto: ", produto[i])
            escreva("\nValor Pedido: ", Mat.arredondar(valorPedido[i],2))
            escreva("\nStatus: ", status[i], "\n\n")
          }
        }
        pare

        caso 5:
        limpa()
        escreva("\nQual status deseja totalizar o valor:\n")
        escreva("1 - Recebido\n")
        escreva("2 - A ser receido\n")
        escreva("3 - Em preparo:\n")
        escreva("\nOpção: ")
        leia(z)

        escolha (z){
          caso 1:
          total = 0.0
          para (i = 0; i < m; i++){
            se(status[i] == "Recebido"){
              total = total + valorPedido[i]
            }
          }
          escreva("\nTotal Recebito R$ ", Mat.arredondar(total,2))
          pare

          caso 2:
          total = 0.0
          para (i = 0; i < m; i++){
            se(status[i] == "A ser recebido"){
              total = total + valorPedido[i]
            }
          }
          escreva("\nTotal a ser recebito R$ ", Mat.arredondar(total,2))
          pare

          caso 3:
          total = 0.0
          para (i = 0; i < m; i++){
            se(status[i] == "Em preparo"){
              total = total + valorPedido[i]
            }
          }
          escreva("\nTotal em preparo R$ ", Mat.arredondar(total,2))
          pare
        }
        escreva("\n\n")
        pare

        caso 6:
        limpa()
        real totalRec = 0.0
        real totalARec = 0.0
        real totalEsp = 0.0

        para (i = 0; i < m; i++){
            se(status[i] == "Recebido"){
              totalRec = totalRec + valorPedido[i]
            }
            senao{
              se(status[i] == "A ser recebido"){
                totalARec = totalARec + valorPedido[i]
              }
              senao{
                totalEsp = totalEsp + valorPedido[i]
              }
            }
        }
        escreva("\nTotal Recebito R$ ", Mat.arredondar(totalRec,2))
        escreva("\nTotal A ser recebido R$ ", Mat.arredondar(totalARec,2))
        escreva("\nTotal em espera R$ ", Mat.arredondar(totalEsp,2))
        escreva("\n\n")
        pare

        caso 7:
        limpa()
        para (i = 0; i < m; i++){
          escreva("\nId: ", id[i])
          escreva("\nNome: ", nome[i])
          escreva("\nEndereço: ", endereco[i])
          escreva("\nTel: ", tel[i])
          escreva("\nProduto: ", produto[i])
          escreva("\nValor Pedido: ", Mat.arredondar(valorPedido[i],2))
          escreva("\nStatus: ", status[i], "\n\n")
        }
        pare

        caso 8:
        escreva("\nSistema sendo encerrado. Obrigado!\n")
        pare

        caso contrario:
        escreva("\nOpção inválida! Tente novamente.\n")
        pare

      }
 
    }
    enquanto (x != 8)

  }
}
