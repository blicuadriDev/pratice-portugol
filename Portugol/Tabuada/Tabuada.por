programa {
  inteiro i, n, soma, mult

  funcao inicio() {
    escreva("Olá criança, eu sou Lucas Neto e hoje vamos aprender tabuada. Legal né ?! Sim mto legal\n")
    escreva("Eu vou te pedir um número e te mostro como é a tabuada de 0 a 10 para esse número, na soma e multiplicação. Pronto? Tenho certeza que sim. Boraaaaaa....!!!!\n")
    escreva("Escolha um numero: ")
    leia(n)

    enquanto (n > 10){
      escreva("\nNão criatura, tem que ser um número de 1 a 10.\n")
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

    escreva("\nMuito bom, vc é o meu melhor amigo. S2 zo/ =) =D (isso é um emoji, eu acho)\n")

  }
}