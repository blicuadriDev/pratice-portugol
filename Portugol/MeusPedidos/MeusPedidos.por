programa {
  inclua biblioteca Matematica --> Mat
  inclua biblioteca Util --> u

  inteiro x, y, z, i, m , auxId
  inteiro vetorSize = 20
  real total
  caracter resp
  logico hasId
  cadeia statusAux

  inteiro id[20]
  cadeia nome[20]
  cadeia endereco[20]
  inteiro tel[20]
  cadeia produto[20]
  real valorPedido[20]
  cadeia status[20]

  funcao inicio() {

    faca {
      menuInic()

      escolha (x){

        caso 1:
        cadastroCliente()
        pare

        caso 2:
        alterarStatus()
        pare

        caso 3:
        editarPedido()
        limpa()
        pare

        caso 4:
        visualizarPedido()
        //limpa()
        pare

        caso 5:
        totalPorStatus()
        pare

        caso 6:
        somaTotalGeral()
        pare

        caso 7:
        listaPedidos()
        pare

        caso 8:
        encerramento()
        pare

        caso 9:
        adminAdiciona()
        pare

        caso contrario:
        optInvalido()
        pare

      }
    }
    enquanto (x != 8)
  }

  funcao menuInic(){
    limpa()
      escreva("1 - Cadastrar pedido do cliente:\n")
      escreva("2 - Alterar o status do pedido:\n")
      escreva("3 - Editar as informações de um pedido:\n")
      escreva("4 - Visualizar pedido:\n")
      escreva("5 - Visualizar o valor total de acordo com cada status do pedido:\n")
      escreva("6 - Visualizar o valor em espera a ser recebido e recebido:\n")
      escreva("7 - Listar todos os pedidos:\n")
      escreva("8 - Finalizar o programa:\n")
      escreva("9 - Admin/Adicionar conjunto de pedidos\n")
      escreva("\nOpção: ")

      leia(x)
      enquanto (x == 0){
      limpa()
      optInvalido()
      escreva("\n1 - Cadastrar pedido do cliente:\n")
      escreva("2 - Alterar o status do pedido:\n")
      escreva("3 - Editar as informações de um pedido:\n")
      escreva("4 - Visualizar pedido:\n")
      escreva("5 - Visualizar o valor total de acordo com cada status do pedido:\n")
      escreva("6 - Visualizar o valor em espera a ser recebido e recebido:\n")
      escreva("7 - Listar todos os pedidos:\n")
      escreva("8 - Finalizar o programa:\n")
      escreva("9 - Admin/Adicionar conjunto de pedidos\n")
      escreva("\nOpção: ")
      leia(x)
    }
  }

  funcao cadastroCliente(){
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
  }

  funcao alterarStatus(){
    limpa()
        escreva("Qual id do pedido que deseja alterar Status: ")
        leia(auxId)

        para (i = 0; i < vetorSize; i++){
          se(id[i] == auxId){
            escreva("\nStatus atual: ", status[i])
            escreva("\nStatus novo: ")
            leia(statusAux)
            status[i] = statusAux
          }
        }
        limpa()
  }

  funcao editarPedido() {
    limpa()
        escreva("Qual id do pedido que deseja editar: ")
        leia(auxId)
        para (i = 0; i < vetorSize; i++){
          se(id[i] == auxId){
            hasId = verdadeiro
            escreva("\nId: ", id[i])
            escreva("\nNome: ", nome[i])
            escreva("\nEndereço: ", endereco[i])
            escreva("\nTel: ", tel[i])
            escreva("\nProduto: ", produto[i])
            escreva("\nValor Pedido: ", Mat.arredondar(valorPedido[i],2))
            escreva("\nStatus: ", status[i], "\n\n")
          }
        }

        escreva("\nQual campo deseja alterar:\n")
        escreva("1 - Nome:\n")
        escreva("2 - Endereço:\n")
        escreva("3 - Tel:\n")
        escreva("4 - Produto:\n")
        escreva("5 - Valor Pedido:\n")
        escreva("6 - Status:\n")
        escreva("\nOpção: ")
        leia(y)

        enquanto (y<1 ou y>6) {
          optInvalido()
          escreva("Opt: ")
          leia(y)
        }

        escolha (y){
          caso 1:
          para (i = 0; i < vetorSize; i++){
            se(id[i] == auxId) {
              escreva("\nNome: ")
              leia(nome[i])
            }
          }
          pare

          caso 2:
          para (i = 0; i < vetorSize; i++) {
            se(id[i] == auxId) {
              escreva("\nEndereço: ")
              leia(endereco[i])
            }
          }
          pare

          caso 3:
          para (i = 0; i < vetorSize; i++) {
            se(id[i] == auxId) {
              escreva("\nTel: ")
              leia(tel[i])
            }
          }
          pare

          caso 4:
          para (i = 0; i < vetorSize; i++) {
            se(id[i] == auxId) {
              escreva("\nProduto: ")
              leia(produto[i])
            }
          }
          pare

          caso 5:
          para (i = 0; i < vetorSize; i++) {
            se(id[i] == auxId) {
              escreva("\nValor Pedido: ")
              leia(valorPedido[i])
            }
          }
          pare

          caso 6:
          para (i = 0; i < vetorSize; i++) {
            se(id[i] == auxId) {
              escreva("\nStatus: ")
              leia(status[i])
            }
          }
          pare
        }
  }

  funcao visualizarPedido(){
    limpa()
    escreva("Qual id do pedido que deseja visualizar: ")
    leia(auxId)
    hasId = falso
    para (i = 0; i < vetorSize; i++){
      se(id[i] == auxId){
        hasId = verdadeiro
        escreva("\nId: ", id[i])
        escreva("\nNome: ", nome[i])
        escreva("\nEndereço: ", endereco[i])
        escreva("\nTel: ", tel[i])
        escreva("\nProduto: ", produto[i])
        escreva("\nValor Pedido: ", Mat.arredondar(valorPedido[i],2))
        escreva("\nStatus: ", status[i], "\n\n")
        voltaMenuInic()
      }
    }
    se(hasId == falso){
      hasId()
    }
  }

  funcao totalPorStatus(){
    limpa()
	  escreva("\nQual status deseja totalizar o valor:\n")
    escreva("1 - Recebido\n")
    escreva("2 - A ser receido\n")
    escreva("3 - Em preparo:\n")
    escreva("\nOpção: ")

    leia(x)

    enquanto (x < 1 ou x > 3){
      limpa()
      optInvalido()
      escreva("\nQual status deseja totalizar o valor:\n")
      escreva("1 - Recebido\n")
      escreva("2 - A ser receido\n")
      escreva("3 - Em preparo:\n")
      escreva("\nOpção: ")

      leia(x)
    }
  
    total = 0.0

	  se(x == 1){
      limpa()
		  para (i = 0; i < vetorSize; i++){
 			  se(status[i] == "Recebido"){
			  total += valorPedido[i]
			  }
      }
		  escreva("\nTotal Recebido R$ ", Mat.arredondar(total,2), "\n\n")
    }
    senao se(x == 2) {
      limpa()
      para (i = 0; i < vetorSize; i++){
        se(status[i] == "A ser recebido") {
          total += valorPedido[i]
        }
      }
      escreva("\nTotal A ser recebido R$ ", Mat.arredondar(total,2), "\n\n")
    }
    senao se(x == 3) {
      limpa()
      para (i = 0; i < vetorSize; i++) {
        se(status[i] == "Em preparo") {
        total = total + valorPedido[i]
        }
      }
      escreva("\nTotal Em preparo R$ ", Mat.arredondar(total,2), "\n\n")
    }
    voltaMenuInic()
  }

  funcao somaTotalGeral(){
    
	  real totalRec = 0.0
    real totalARec = 0.0
    real totalEsp = 0.0

    para (i = 0; i < 7; i++){
      se(status[i] == "Recebido"){
        totalRec += valorPedido[i]
      }
      senao se(status[i] == "A ser recebido"){
        totalARec += valorPedido[i]
      }
      senao{
        totalEsp += valorPedido[i]
      }
    }
    escreva("\nSubTotal Recebito R$ ", Mat.arredondar(totalRec,2))
    escreva("\nSubTotal A ser recebido R$ ", Mat.arredondar(totalARec,2))
    escreva("\nSubTotal Em espera R$ ", Mat.arredondar(totalEsp,2))
	  escreva("\n")
    escreva("\nTotal Geral R$ ", Mat.arredondar(totalRec + totalARec + totalEsp , 2))
    escreva("\n\n")

    voltaMenuInic()
  }
	
  funcao listaPedidos(){
    limpa()
	  para (i = 0; i < 7; i++){
      escreva("\nId: ", id[i])
      escreva("\nNome: ", nome[i])
      escreva("\nEndereço: ", endereco[i])
      escreva("\nTel: ", tel[i])
      escreva("\nProduto: ", produto[i])
      escreva("\nValor Pedido: ", Mat.arredondar(valorPedido[i],3))
      escreva("\nStatus: ", status[i], "\n\n")
    }
    voltaMenuInic()
  }

  funcao adminAdiciona(){
    limpa()
    inteiro id2[] = { 1, 2, 3, 4, 5, 6, 7}
      para(i=0; i<7; i++) {
        id[i] = id2[i]
      }
    cadeia nome2[]={"Ana", "Bianca", "Carla", "Diana", "Eduarda", "Fernanda", "Giovana"}
      para(i=0; i<7; i++) {
       nome[i] = nome2[i]
      }
    cadeia endereco2[]={"Rua A", "Rua B", "Rua C", "Rua D", "Rua E", "Rua F", "Rua G"}
      para(i=0; i<7; i++) {
       endereco[i] = endereco2[i]
      }
    inteiro tel2[]={11111111, 2222222, 33333333, 44444444, 55555555, 66666666, 77777777}
      para(i=0; i<7; i++) {
       tel[i] = tel2[i]
      }
    cadeia produto2[]={"Pra Mim", "Pra Nos", "Pra Todos", "Arrumadinho", "Pra Mim + Coca Lata", "Pra Todos + 2cocas 1Lt", "Pra Mim + Torresminho + Suco Laranja"}
      para(i=0; i<7; i++) {
       produto[i] = produto2[i]
      }
    real valorPedido2[]={59.90, 89.90, 129.90, 89.90, 94.80, 150.90, 71.80}
      para(i=0; i<7; i++) {
       valorPedido[i] = valorPedido2[i]
      }
    cadeia status2[]={"Recebido", "A ser recebido", "Em preparo", "Recebido", "A ser recebido", "Em preparo", "Em preparo"}
      para(i=0; i<7; i++) {
       status[i] = status2[i]
      }
    escreva("Pedidos Criados com sucesso.\n")
    u.aguarde(1000)
    limpa()
  }

  funcao encerramento(){
	  escreva("\nSistema sendo encerrado. Obrigado!\n")
  }

  funcao optInvalido(){
    escreva("\nDuhhh!!! Opção inválida! Tente novamente.\n")
  }

  funcao voltaMenuInic(){
    escreva("Deseja voltar para o Menu Principal (s/n): ")
    leia(resp)
    enquanto (resp != 's' e resp != 'n'){
      limpa()
      optInvalido()
      escreva("\nDeseja voltar para o Menu Principal (s/n): ")
      leia(resp)
    }
    se (resp == 's'){
        
      }
      senao se (resp =='n'){
        x=8
        encerramento()
      }
  }

  funcao hasId(){
    escreva("Id inválido ou inexistente. ")
    escreva("Deseja tentar um novo Id? (s/n): ")
    leia(resp)
    enquanto (resp != 's' e resp != 'n'){
      limpa()
      optInvalido()
      escreva("Deseja tentar um novo Id? (s/n): ")
      leia(resp)
    }
    se (resp == 's'){
     limpa()
      visualizarPedido()
    }
    senao se(resp == 'n'){
      limpa()
      menuInic()
    }
  }

}