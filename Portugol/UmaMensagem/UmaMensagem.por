programa {
  inclua biblioteca Texto --> tx
  cadeia frase
  inteiro n

  funcao inicio() {
    escreva("Conte-nos em um tweet um pensamento para o dia de hj.\n")
    escreva("Frase: ")
    leia(frase)
    n = tx.numero_caracteres(frase)

    enquanto(n > 30){
      escreva("\n\nFail! Era pra ser um tweet, não um romance a la Clarice Linspector. ")
      escreva("Seu pensamento do dia possui ", n , " caracteres, " , n-30 , " a mais do esperado.\n")
      escreva("Como já dizia um antigo poeta: Tente outra vez.\n\n")
      escreva("Frase: ")
      leia(frase)
      n = tx.numero_caracteres(frase)
    }

    limpa()
    escreva("\nExcelente. Sua frase '", frase, "' possui ", n, " caracteres, ", 30-n, " a menos do máximo permitido.\n")

  }
}