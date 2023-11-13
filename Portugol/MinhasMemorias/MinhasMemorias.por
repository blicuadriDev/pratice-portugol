programa {
  inclua biblioteca Texto --> tx
  caracter resp
  cadeia titulo[10], hist[10], data[10]
  cadeia title
  inteiro count = 0

  funcao inicio() {
    resp = 's'

    enquanto(resp == 's'){
	    escreva("Forrest, qual é o título dessa história? ")
	    leia(title)
      titulo[count] = tx.caixa_alta(title)

	    escreva("\nConte-nos sobre essa sua história\n")
	    leia(hist[count])

	    escreva("\nQual é a data em que ocorreu essa história?\n")
	    leia(data[count])

	    count++

	    escreva("\nForrest Gump, o sr. deseja acrescentar alguma nova história? (s/n)\n")
	    leia(resp)

      limpa()
    }

    escreva("\nMuito em sr Forrest, vamos revisar para termos certeza de que não se esqueceu de nenhuma história.\n\n")

    para (inteiro i = 0; i < count; i++) {
      se (titulo[i] == " " ){
      }
      senao{
        escreva("Título: ", titulo[i], "      Posição: ", i+1, "\n\n")
        escreva("Historia:\n", hist[i],"\n")
        escreva("\nData: ", data[i],"\n\n")
      }
    }

    escreva("\n\nMuito em sr Forrest, temos adicionadas em seu diário ", count, " histórias.\n\n")

  }
}
