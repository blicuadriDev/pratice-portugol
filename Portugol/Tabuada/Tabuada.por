programa {
  inteiro i, n, soma, mult

  funcao inicio() {
    escreva("Ol� crian�a, eu sou Lucas Neto e hoje vamos aprender tabuada. Legal n� ?! Sim mto legal\n")
    escreva("Eu vou te pedir um n�mero e te mostro como � a tabuada de 0 a 10 para esse n�mero, na soma e multiplica��o. Pronto? Tenho certeza que sim. Boraaaaaa....!!!!\n")
    escreva("Escolha um numero: ")
    leia(n)

    enquanto (n > 10){
      escreva("\nN�o criatura, tem que ser um n�mero de 1 a 10.\n")
      escreva("Laalaa, pooolll, tinky-Winky, dipsy hihihihi de novo\n")
      escreva("Escolha um numero: ")
      leia(n)
    }

    escreva("\nSOMA:            MULTIPLICACAO\n")
    para (i = 0; i <= 10; i++) {
      soma = i+n
      mult = i*n
      escreva(i," + ",n," = ",soma,"         ",i," x ",n," = ", mult,"\n")
    }

    escreva("\nMuito bom, vc � o meu melhor amigo. S2 zo/ =) =D (isso � um emoji, eu acho)\n")

  }
}