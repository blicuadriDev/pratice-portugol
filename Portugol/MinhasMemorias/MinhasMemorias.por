programa {
  inclua biblioteca Texto --> tx
  caracter resp
  cadeia titulo[10], hist[10], data[10]
  cadeia title
  inteiro count = 0

  funcao inicio() {
    resp = 's'

    enquanto(resp == 's'){
	    escreva("Forrest, qual � o t�tulo dessa hist�ria? ")
	    leia(title)
      titulo[count] = tx.caixa_alta(title)

	    escreva("\nConte-nos sobre essa sua hist�ria\n")
	    leia(hist[count])

	    escreva("\nQual � a data em que ocorreu essa hist�ria?\n")
	    leia(data[count])

	    count++

	    escreva("\nForrest Gump, o sr. deseja acrescentar alguma nova hist�ria? (s/n)\n")
	    leia(resp)

      limpa()
    }

    escreva("\nMuito em sr Forrest, vamos revisar para termos certeza de que n�o se esqueceu de nenhuma hist�ria.\n\n")

    para (inteiro i = 0; i < count; i++) {
      se (titulo[i] == " " ){
      }
      senao{
        escreva("T�tulo: ", titulo[i], "      Posi��o: ", i+1, "\n\n")
        escreva("Historia:\n", hist[i],"\n")
        escreva("\nData: ", data[i],"\n\n")
      }
    }

    escreva("\n\nMuito em sr Forrest, temos adicionadas em seu di�rio ", count, " hist�rias.\n\n")

  }
}
