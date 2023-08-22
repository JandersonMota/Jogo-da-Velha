Algoritmo "jogoDaVelha"
// Disciplina   : [Linguagem e Lógica de Programação]
// Professora   : Patricia Melo
// Autor(a)     : Erick, Janderson, Miguel

{
** VARIÁVEL [GLOBAL]
** - opcao: RECEBI UMA DECISÃO PARA NAVEGAR NO MENU.
** - escolhaDoJogador: USADO NOS PROCEDIMENTOS "tomadaDeDecisao_DoisJogadores()" E "escolhaDoJogadorNoJogo".
** - letraJogador1 e 2: RECEBI UM "X" OU "O", DEFINIDO PELO USUÁRIO.
** - camponotnull: DECISAO LÓGICA PARA SER USADA NO PROCEDIMENTO "escolhaDoJogadorNoJogo()".
** - repeteJogo: DECISAO LÓGICA PARA SER USADA NOS PROCEDIMENTOS "tomadaDeDecisao_DoisJogadores()", "vencedor()", "empate()".
** - campo: CRIA UM VETOR DE ORDEM 3 PARA DEFINIR OS CAMPOS DO JOGO.
** - x: CONTADOR.
** - contaRepeticao: CONTA REPETIÇÕES E ESTÁ SENDO USADO NOS PROCEDIMENTOS "tomadaDeDecisao_DoisJogadores()", "vencedor()" E "empate()".
}

Var
   opcao, escolhaDoJogador, letraJogador1, letraJogador2: caracter
   camponotnull, repeteJogo: logico
   campo: vetor[1.. 3, 1.. 3] de caracter
   x, contaRepeticao: inteiro
   



   // [Nível 4] SUBPROGRAMA: TELA PARA EXIBIR QUEM FOI O VENCEDOR.
   Procedimento vencedor()
   {
   ** VARIÁVEL
   }

   Var

   Inicio
      escreval("   +---------------------------------------------------------------------------------------------------------+   ")
      escreval("   |                                                                                                         |   ")
      escreval("   |                .:       :    .:^^:     ..     ..      :     ..     .. :.  ..     ..  ..                 |   ")
      escreval("   |                .YG:   ^GJ  ~55J??YPJ.  BY     7#:    .BJ   .B#:   ?#:^@?  B#J    ?B  7&:                |   ")
      escreval("   |                  ?#7 ?B7  ~@?     .GB  #5     ?@:     7@^  YP5P  :&J ^@?  #J5G:  ?#. !@:                |   ")
      escreval("   |                   ^GBP:   Y&       !@^ #5     7@:      GG ^&^.&! 5B  ^@?  #? 7B7 ?#. !&.                |   ")
      escreval("   |                    !@^    ~@?     .GG  BG     5&.      ^@7GY  ?B!@~  ^@?  #?  ^GYJ#. :J.                |   ")
      escreval("   |                    ~&^     ^55J??JPJ.  :55???5P^        ?#B.   G#Y   ^@?  B7    Y#B  ~Y.                |   ")
      escreval("   |                     .        .:^^:       .:^:.           :.    .:     :.  ..     ..  .:                 |   ")
      escreval("   |                                                                                                         |   ")
      escreval("   +---------------------------------------------------------------------------------------------------------+   ")

      repeteJogo <- falso
      
      Se (contaRepeticao > 0) entao
         repeteJogo <- verdadeiro
      fimSe

   fimProcedimento
   //-----------------------------------------------------------------------------------------



   // [Nível 4] SUBPROGRAMA: TELA PARA EXIBIR EMPATE.
   Procedimento empate()
   {
   ** VARIÁVEL
   }

   Var

   Inicio
      escreval("   +---------------------------------------------------------------------------------------------------------+   ")
      escreval("   |                                                                                                         |   ")
      escreval("   |              :J??JY??J^ J?  ?Y????J?:      .7JJJJJ!.     75~    ^Y?     :YJ  !Y?????J^ :Y:              |   ")
      escreval("   |              ^^^^G#^^^^ #G  BG            ~#Y^:..~Y!    7#?#^   !@BJ    PB&. 5&        ~@^              |   ")
      escreval("   |                  PB     #P  BB77777~      BG           ~&~ ?#:  !#^#!  557&. Y&777777  ^&^              |   ")
      escreval("   |                  PB     #P  BG:^^^^:      PB   :?7J&^ ^&G???#B. !&.~#^7B 7&. Y#^^^^^:  :B:              |   ")
      escreval("   |                  PB     #G  BG            :PP7~^^~YB::#Y ....GG !&. 7#B^ 7&. 5&                         |   ")
      escreval("   |                  ~!     !~  ~7777777^       ^!777!^  ^!      .7.:!   !^  :!  ^7777777~ :7.              |   ")
      escreval("   |                                                                                                         |   ")
      escreval("   +---------------------------------------------------------------------------------------------------------+   ")

      repeteJogo <- falso
      
      Se (contaRepeticao > 0) entao
         repeteJogo <- verdadeiro
      fimSe

   fimProcedimento
   //-----------------------------------------------------------------------------------------




   // [Nível 4] SUBPROGRAMA:
   {
   //** NESTE LOCAL, ADD ESPAÇO VAZIO EM CADA POSIÇÃO DA MATRIZ, APRESENTANDO UM
   //** LAYOUT AGRADAVEL.
   }
   Procedimento paraCompoVazio()
   
   Var
   
   Inicio
      limpatela

      {* ESSA SEQUENCIA DE "SE" VERIFICA SE ESTÁ VAZIA CADA CAMPO DA MATRIZ E CASO
      ** ESTEJA, É ADD UM ESPAÇO VAZIO. ISSO OCORRE LOGO QUANDO É APRESENTADO O JOGO
      ** SEM SER ADD NADA NELE.}
      Se (campo[3, 1] = "") entao
         campo[3, 1] <- " "
      fimSe

      Se (campo[2, 1] = "") entao
         campo[2, 1] <- " "
      fimSe

      Se (campo[1, 1] = "") entao
         campo[1, 1] <- " "
      fimse

      Se (campo[3, 2] = "") entao
         campo[3, 2] <- " "
      fimse

      Se (campo[2, 2] = "") entao
         campo[2, 2] <- " "
      fimse

      Se (campo[1, 2] = "") entao
         campo[1, 2] <- " "
      fimse

      Se (campo[3, 3] = "") entao
         campo[3, 3] <- " "
      fimse

      Se (campo[2, 3] = "") entao
         campo[2, 3] <- " "
      fimse

      Se (campo[1, 3] = "") entao
         campo[1, 3] <- " "
      fimSe
   fimProcedimento
   //-----------------------------------------------------------------------------------------
   
   
   
   
   // [Nível 3] SUBPROGRAMA:
   {
   //** NESSE LOCAL, FICA O TABULEIRO DO JOGO DA VELHA E NELE INFORMA QUEM SERÁ O
   //** PROXIMO JOGADOR REPRESENTADO PELAS LETRAS "X" E "O".
   }
   Procedimento tabuleiro(jogador: caracter; campOX: caracter)
   {
   ** VARIÁVEL
   ** - jogador: RECEBI UM DADO QUE FOI PASSADO "X" OU "O".
   ** - campOX: RECEBI A POSIÇÃO QUE O USUÁRIO PASSOU. EX.: "A1".
   }

   Var

   Inicio
      limpatela

      paraCompoVazio()

      {* FAZ COMPARAÇÃO DO QUE FOI PASSADO PELO USUÁRIO COM CADA POSIÇÃO DO JOGO
      ** USANDO LETRA + NÚMERO}

      {COLUNA 'A' DO JOGO}
      Se (campOX = "A1") entao
         campo[3, 1] <- jogador
      senao
         Se (campOX = "A2") entao
            campo[2, 1] <- jogador
         senao
            Se (campOX = "A3") entao
               campo[1, 1] <- jogador
            senao
               {COLUNA 'B' DO JOGO}
               Se (campOX = "B1") entao
                  campo[3, 2] <- jogador
               senao
                  Se (campOX = "B2") entao
                     campo[2, 2] <- jogador
                  senao
                     Se (campOX = "B3") entao
                        campo[1, 2] <- jogador
                     senao
                        {COLUNA 'C' DO JOGO}
                        Se (campOX = "C1") entao
                           campo[3, 3] <- jogador
                        senao
                           Se (campOX = "C2") entao
                              campo[2, 3] <- jogador
                           senao
                              Se (campOX = "C3") entao
                                 campo[1, 3] <- jogador
                              fimSe
                           fimSe
                        fimSe
                     fimSe
                  fimSe
               fimSe
            fimSe
         fimSe
      fimSe

      {DEFINE QUEM É O JOGADOR}
      Se (jogador = "O") entao
         jogador <- "X"
      senao

         Se (jogador = "X") entao
            jogador <- "O"

         senao
            jogador <- ""
         fimSe
      fimSe

      escreval("*****************************************************************************************************************")
      escreval("***                                                JOGO DA VELHA                                              ***")
      escreval("*****************************************************************************************************************")
      escreval("")

      escreval("                                                  Jogador: ",jogador)
      escreval("")
      escreval("                                            3     ",campo[1, 1],"  |  ",campo[1, 2],"  |  ",campo[1, 3],"  ")
      escreval("                                                -----------------")
      escreval("                                            2     ",campo[2, 1],"  |  ",campo[2, 2],"  |  ",campo[2, 3],"  ")
      escreval("                                                -----------------")
      escreval("                                            1     ",campo[3, 1],"  |  ",campo[3, 2],"  |  ",campo[3, 3],"  ")
      escreval("")
      escreval("                                                  A     B     C")

      {
      ** VERIFICA A CADA RODADA D0 JOGO SE GANHOU OU NÃO.
      }
      {VERIFICA SE AS COLUNAS TEM VALORES IGUAIS PARA "O" OU "X"}
      Se ((campo[3, 1] = "O") E (campo[2, 1] = "O") E (campo[1, 1] = "O") OU (campo[3, 1] = "X") E (campo[2, 1] = "X") E (campo[1, 1] = "X")) entao
         escreval()
         escreval()

         vencedor()
      senao

         Se ((campo[3, 2] = "O") E (campo[2, 2] = "O") E (campo[1, 2] = "O") OU (campo[3, 2] = "X") E (campo[2, 2] = "X") E (campo[1, 2] = "X")) entao
            escreval()
            escreval()

            vencedor()
         senao

            Se ((campo[3, 3] = "O") E (campo[2, 3] = "O") E (campo[1, 3] = "O") OU (campo[3, 3] = "X") E (campo[2, 3] = "X") E (campo[1, 3] = "X")) entao
               escreval()
               escreval()

               vencedor()
            senao

               {VERIFICA SE AS LINHAS TEM VALORES IGUAIS PARA "O" OU "X"}
               Se ((campo[3, 1] = "O") E (campo[3, 2] = "O") E (campo[3, 3] = "O") OU (campo[3, 1] = "X") E (campo[3, 2] = "X") E (campo[3, 3] = "X")) entao
                  escreval()
                  escreval()

                  vencedor()
               senao

                  Se ((campo[2, 1] = "O") E (campo[2, 2] = "O") E (campo[2, 3] = "O") OU (campo[2, 1] = "X") E (campo[2, 2] = "X") E (campo[2, 3] = "X")) entao
                     escreval()
                     escreval()

                     vencedor()
                  senao

                     Se ((campo[1, 1] = "O") E (campo[1, 2] = "O") E (campo[1, 3] = "O") OU (campo[1, 1] = "X") E (campo[1, 2] = "X") E (campo[1, 3] = "X")) entao
                        escreval()
                        escreval()

                        vencedor()
                     senao

                        {VERIFICA SE AS DIAGONAIS TEM VALORES IGUAIS PARA "O" OU "X"}
                        Se ((campo[3, 1] = "O") E (campo[2, 2] = "O") E (campo[1, 3] = "O") OU (campo[3, 1] = "X") E (campo[2, 2] = "X") E (campo[1, 3] = "X")) entao
                           escreval()
                           escreval()

                           vencedor()
                        senao

                           Se ((campo[1, 1] = "O") E (campo[2, 2] = "O") E (campo[3, 3] = "O") OU (campo[1, 1] = "X") E (campo[2, 2] = "X") E (campo[3, 3] = "X")) entao
                              escreval()
                              escreval()

                              vencedor()
                           senao

                              {VERIFICA SE TODOS OS CAMPOS FORAM PREENCHIDOS E SE CASO ISSO OCORREU, EXIBI A MENSAGEM DE EMPATE}
                              Se ((campo[3, 1] <> " ") E (campo[2, 1] <> " ") E (campo[1, 1] <> " ") E (campo[3, 2] <> " ") E (campo[2, 2] <> " ") E (campo[1, 2] <> " ") E (campo[3, 3] <> " ") E (campo[2, 3] <> " ") E (campo[1, 3] <> " ")) entao
                                 escreval()
                                 escreval()

                                 empate()
                              fimSe
                           fimse
                        fimSe
                     fimSe
                  fimSe
               fimSe
            fimSe
         fimSe
      fimSe

   fimProcedimento
   //-----------------------------------------------------------------------------------------




   // [Nível 4] SUBPROGRAMA:
   {
   //** LIMPA TODOS OS CAMPOS DEIXANDO VAZIO.
   }
   Procedimento apagaTodosOsCampo()

   Var

   Inicio
      campo[3, 1] <- ""
      campo[2, 1] <- ""
      campo[1, 1] <- ""
      campo[3, 2] <- ""
      campo[2, 2] <- ""
      campo[1, 2] <- ""
      campo[3, 3] <- ""
      campo[2, 3] <- ""
      campo[1, 3] <- ""

   fimProcedimento
   //-----------------------------------------------------------------------------------------




   // [Nível 3] SUBPROGRAMA:
   {
   //** NESTE LOCAL, COMPARA O QUE FOI PASSADO PELO USUÁRIO E SE O CAMPO ESTÁ VAZIO.
   }
   Procedimento escolhaDoJogadorNoJogo(letraDoJogador: caracter)
   {
   ** VARIÁVEL
   ** - letraDoJogador: RECEBI UM DADO QUE FOI PASSADO "X" OU "O".
   ** - campoOX: RECEBI UMA POSSIÇÃO DO JOGO QUE É EQUIVALENTE A MESMA POSSIÇÃO PASSADA PELO USUÁRIO.
   }

   Var
      campoOX: caracter

   Inicio
      Se ((escolhaDoJogador = "A1")e(campo[3,1] = " ")) entao
         campoOX <- "A1"
         camponotnull <- falso

         tabuleiro(letraDoJogador, campoOX)
      Senao

         Se ((escolhaDoJogador = "A2")e(campo[2,1] = " ")) entao
            campoOX <- "A2"
            camponotnull <- falso

            tabuleiro(letraDoJogador, campoOX)
         Senao

            Se ((escolhaDoJogador = "A3")e(campo[1,1] = " ")) entao
               campoOX <- "A3"
               camponotnull <- falso

               tabuleiro(letraDoJogador, campoOX)
            Senao

               Se ((escolhaDoJogador = "B1")e(campo[3,2] = " ")) entao
                  campoOX <- "B1"
                  camponotnull <- falso

                  tabuleiro(letraDoJogador, campoOX)
               Senao

                  Se ((escolhaDoJogador = "B2")e(campo[2,2] = " ")) entao
                     campoOX <- "B2"
                     camponotnull <- falso

                     tabuleiro(letraDoJogador, campoOX)
                  Senao

                     Se ((escolhaDoJogador = "B3")e(campo[1,2] = " ")) entao
                        campoOX <- "B3"
                        camponotnull <- falso

                        tabuleiro(letraDoJogador, campoOX)
                     Senao

                        Se ((escolhaDoJogador = "C1")e(campo[3,3] = " ")) entao
                           campoOX <- "C1"
                           camponotnull <- falso

                           tabuleiro(letraDoJogador, campoOX)
                        Senao

                           Se ((escolhaDoJogador = "C2")e(campo[2,3] = " ")) entao
                              campoOX <- "C2"
                              camponotnull <- falso

                              tabuleiro(letraDoJogador, campoOX)
                           Senao

                              Se ((escolhaDoJogador = "C3")e(campo[1,3] = " ")) entao
                                 campoOX <- "C3"
                                 camponotnull <- falso

                                 tabuleiro(letraDoJogador, campoOX)

                              senao
                                 tabuleiro(letraDoJogador, campoOX)

                                 escreval("")
                                 escreval("                                            ( S ) Sair")
                                 escreval("                                            Campo inválido, fazer nova jogada. Ex.: 'B2'")
                                 escreval("                                            LETRA, NÚMERO")
                                 escreva("                                            >> ")
                                 leia(escolhaDoJogador)

                                 Se ((escolhaDoJogador = "S") OU (escolhaDoJogador = "s")) entao
                                    limpatela

                                    apagaTodosOsCampo()
                                    tomadaDeDecisao_Jogo()

                                 fimSe
                              fimSe
                           fimSe
                        fimSe
                     fimSe
                  fimSe
               fimSe
            fimSe
         fimSe
      fimSe

   fimProcedimento
   //-----------------------------------------------------------------------------------------




   // [Nível 2] SUBPROGRAMA:
   procedimento escolherLetraParaJogar()
   {
   ** VARIÁVEL
   ** - sair: MANTÉM O LAÇO DE REPETIÇÃO ATÉ RECEBER O COMANDO DE SAIR.
   }
   
   Var
      sair: logico

   Inicio
      sair <- verdadeiro

      Repita
         escreval()
         escreva("                                            Escolha (X/O): ")
         leia(letraJogador1)

         Se ((letraJogador1 = "X") OU (letraJogador1 = "x")) entao
            letraJogador1 <- "X"
            letraJogador2 <- "O"

            sair <- falso
         senao
            Se ((letraJogador1 = "O") OU (letraJogador1 = "o") OU (letraJogador1 = "0")) entao
               letraJogador1 <- "O"
               letraJogador2 <- "X"

               sair <- falso
            senao
               escreval()
               escreval("                                            OPÇÃO INVÁLIDA. TENTE NOVAMENTE!")
               
               Para x <- 1 ate 20 faca
                    timer(5)
               fimPara

               tomadaDeDecisao_DoisJogadores()
            fimSe
         fimSe
      Ate (sair = falso)

   fimProcedimento
   //-----------------------------------------------------------------------------------------




   // [Nível 2] SUBPROGRAMA:

   //** NESTE LOCAL, O USUÁRIO INFORMA EM QUAL CAMPO DO JOGO DA VELHA DESEJA JOGAR.

   Procedimento tomadaDeDecisao_DoisJogadores()
   {
   ** VARIÁVEL
   ** - jogadorOX: ESSA VARIÁVEL RECEBI "X" OU "O".
   ** - campoOX:
   ** - continuarJogando: RECEBI "S"(SIM) OU "N"(NÃO).
   ** - cont: CONTADOR.
   ** - sair: MANTÉM O LAÇO DE REPETIÇÃO ATÉ RECEBER O COMANDO DE SAIR.
   }

   Var
      jogadorOX, campoOX, continuarJogando: caracter
      cont: inteiro
      sair: logico

   Inicio
      limpatela

      sair <- verdadeiro
      
      Repita
         jogadorOX <- ""
         campoOX <- ""
         
         tabuleiro(jogadorOX; campoOX)

         escolherLetraParaJogar()

         repeteJogo <- verdadeiro
         cont <- 1
         contaRepeticao <- 0

         Repita
            camponotnull <- verdadeiro

            escreval("")
            escreval("")
            escreval("                                            ( S ) Sair")
            escreval("                                            LETRA, NÚMERO")
            escreva("                                            >> ")
            leia(escolhaDoJogador)

            {ESSE COMANDO É EXECUTADO QUANDO O JOGADOR DESEJAR FINALIZAR O JOGO MESMO
            //SEM TER PREENCHIDO TODOS OS CAMPOS.}
            Se ((escolhaDoJogador = "S") OU (escolhaDoJogador = "s")) entao
               repeteJogo <- falso

               apagaTodosOsCampo()
               tomadaDeDecisao_Jogo()

            Senao
            {ABAIXO É O LOCAL ONDE O USUÁRIO INFORMA EM QUAL POSIÇÃO QUER MARCAR "X" OU 'O'}
               Se (cont MOD 2 = 0) entao
                  limpatela

                  jogadorOX <- letraJogador2

                  enquanto (camponotnull = verdadeiro) faca
                      escolhaDoJogadorNoJogo(jogadorOX)
                  fimenquanto

               Senao
                  limpatela

                  jogadorOX <- letraJogador1

                  enquanto (camponotnull = verdadeiro) faca
                      escolhaDoJogadorNoJogo(jogadorOX)
                  fimenquanto
               fimSe
            fimSe

            cont <- cont + 1
         Ate (repeteJogo = falso)

         repeteJogo <- verdadeiro

         {QUANDO O JOGO É FINALIZADO É EXECUTADO ESSA FUNÇÃO PARA SABER SE DESEJA
         //CONTINUAR A JOGAR.}
         Repita
            escreval("                                            Continuar jogando? (S/N)")
            escreva("                                            >> ")
            leia(continuarJogando)

            Se ((continuarJogando = "S") OU (continuarJogando = "s")) entao
               limpatela

               apagaTodosOsCampo()

               repeteJogo <- falso

            senao
               Se ((continuarJogando = "N") OU (continuarJogando = "n")) entao
                  limpatela

                  apagaTodosOsCampo()

                  repeteJogo <- falso

                  sair <- falso

                  tomadaDeDecisao_Jogo()

               senao
                  escreval()
                  escreval("                                            OPÇÃO INVÁLIDA. TENTE NOVAMENTE!")

                  Para x <- 1 ate 20 faca
                       timer(5)
                  fimPara

                  contaRepeticao <- contaRepeticao + 1

                  tabuleiro(jogadorOX; campoOX)
               fimSe
            fimSe
         Ate (repeteJogo = falso)
      Ate (sair = falso)

   fimProcedimento
   //-----------------------------------------------------------------------------------------




   // [Nível 1] SUBPROGRAMA: AQUI É O LOCAL PARA INICIAR O JOGO
   Procedimento tomadaDeDecisao_Jogo()
   {
   ** VARIÁVEL
   ** - opcaoEscolher: RECEBI UMA DECISÃO PARA NAVEGAR NO MENU.
   }

   Var
      opcaoEscolher: caracter

   Inicio
         limpatela
         
         escreval("*****************************************************************************************************************")
         escreval("***                                                JOGO DA VELHA                                              ***")
         escreval("*****************************************************************************************************************")
         escreval("")
         escreval("                   ( A ) Dois Jogadores              ( R ) Retornar")
         escreva("                   >> ")
         leia(opcaoEscolher)
         escreval("")

         escolha opcaoEscolher
         caso "A", "a"
            tomadaDeDecisao_DoisJogadores()

         caso "R", "r"
            menu_principal()

         outrocaso
            escreval("                   OPÇÃO INVÁLIDA. TENTE NOVAMENTE!")

            Para x <- 1 ate 20 faca
              timer(5)
            fimPara

            tomadaDeDecisao_jogo()
         fimescolha

   FimProcedimento
   //-----------------------------------------------------------------------------------------




   // [Nível 2] SUBPROGRAMA: NESTE LOCAL, O USUARIO VER A SIMULAÇÃO DE COMO JOGAR.
   Procedimento tutorialSimulador()
   
   Var
   
   Inicio
      paraCompoVazio()
      
      Para x <- 1 ate 8 faca
         escreval("*****************************************************************************************************************")
         escreval("***                                                JOGO DA VELHA                                              ***")
         escreval("*****************************************************************************************************************")
         escreval("")
         escreval("                                            3     ",campo[1, 1],"  |  ",campo[1, 2],"  |  ",campo[1, 3],"  ")
         escreval("                                                -----------------")
         escreval("                                            2     ",campo[2, 1],"  |  ",campo[2, 2],"  |  ",campo[2, 3],"  ")
         escreval("                                                -----------------")
         escreval("                                            1     ",campo[3, 1],"  |  ",campo[3, 2],"  |  ",campo[3, 3],"  ")
         escreval("")
         escreval("                                                  A     B     C")

         {ATRIBUI AS LETRAS "X" E "O" NOS CAMPOS E MOSTRA DIGITANDO A LETRA+NÚMERO. EX.: 'B2'}
         Se (x = 1) entao
            campo[2, 2] <- "X"

            escreval("")
            escreval("")
            escreval("                                            ( S ) Sair")
            escreval("                                            LETRA, NÚMERO")
            escreva("                                            >> ")

            Para x <- 1 ate 10 faca
              timer(5)
            fimPara

            escreva("B")
            
            Para x <- 1 ate 10 faca
              timer(5)
            fimPara
            
            escreva("2")
         fimSe

         Se (x = 2) entao
            campo[3, 1] <- "O"
            
            escreval("")
            escreval("")
            escreval("                                            ( S ) Sair")
            escreval("                                            LETRA, NÚMERO")
            escreva("                                            >> ")

            Para x <- 1 ate 10 faca
              timer(5)
            fimPara

            escreva("A")

            Para x <- 1 ate 10 faca
              timer(5)
            fimPara

            escreva("1")
         fimSe

         Se (x = 3) entao
            campo[1, 3] <- "X"
            
            escreval("")
            escreval("")
            escreval("                                            ( S ) Sair")
            escreval("                                            LETRA, NÚMERO")
            escreva("                                            >> ")

            Para x <- 1 ate 10 faca
              timer(5)
            fimPara

            escreva("C")

            Para x <- 1 ate 10 faca
              timer(5)
            fimPara

            escreva("3")
         fimSe

         Se (x = 4) entao
            campo[2, 1] <- "O"
            
            escreval("")
            escreval("")
            escreval("                                            ( S ) Sair")
            escreval("                                            LETRA, NÚMERO")
            escreva("                                            >> ")

            Para x <- 1 ate 10 faca
              timer(5)
            fimPara

            escreva("A")

            Para x <- 1 ate 10 faca
              timer(5)
            fimPara

            escreva("2")
         fimSe

         Se (x = 5) entao
            campo[1, 1] <- "X"
            
            escreval("")
            escreval("")
            escreval("                                            ( S ) Sair")
            escreval("                                            LETRA, NÚMERO")
            escreva("                                            >> ")

            Para x <- 1 ate 10 faca
              timer(5)
            fimPara

            escreva("A")

            Para x <- 1 ate 10 faca
              timer(5)
            fimPara

            escreva("3")
         fimSe

         Se (x = 6) entao
            campo[3, 3] <- "O"
            
            escreval("")
            escreval("")
            escreval("                                            ( S ) Sair")
            escreval("                                            LETRA, NÚMERO")
            escreva("                                            >> ")

            Para x <- 1 ate 10 faca
              timer(5)
            fimPara

            escreva("C")

            Para x <- 1 ate 10 faca
              timer(5)
            fimPara

            escreva("1")
         fimSe

         Se (x = 7) entao
            campo[1, 2] <- "X"
            
            escreval("")
            escreval("")
            escreval("                                            ( S ) Sair")
            escreval("                                            LETRA, NÚMERO")
            escreva("                                            >> ")

            Para x <- 1 ate 10 faca
              timer(5)
            fimPara

            escreva("B")

            Para x <- 1 ate 10 faca
              timer(5)
            fimPara

            escreva("3")
         fimSe
         
         Se (x = 8) entao
            escreval()
            escreval()

            vencedor()
         fimSe

         Para x <- 1 ate 50 faca
              timer(5)
         fimPara
         
         limpatela
         
      fimPara
      
      repeteJogo <- falso
      
      apagaTodosOsCampo()
      tomadaDeDecisao_Tutorial()
   
   fimProcedimento
   
   
   
   
   // [Nível 1] SUBPROGRAMA: AQUI FICA O TUTORIAL COM INFORMAÇÕES DE COMO JOGAR
   Procedimento tomadaDeDecisao_Tutorial()
   {
   ** VARIÁVEL
   ** - opcaoEscolher: RECEBI UMA DECISÃO PARA NAVEGAR NO MENU.
   }

   Var
      retorno_tut, opcaoEscolhaTutorial: caracter

   Inicio
      limpatela
      
      Repita
         repeteJogo <- verdadeiro

         escreval("                   ---------- ||     || ----------  /¨¨¨¨¨¨\  ||¨¨¨¨\  ||      /|| ||       ")
         escreval("                       ||     ||     ||     ||     ||      || ||     | ||     / || ||       ")
         escreval("                       ||     ||     ||     ||     ||      || ||____/  ||    /  || ||       ")
         escreval("                       ||     ||     ||     ||     ||      || ||   \   ||   /---|| ||       ")
         escreval("                       ||     ||     ||     ||     ||      || ||    \  ||  /    || ||       ")
         escreval("                       ||      \_____/      ||      \______/  ||     \ || /     || ||_____||")
         escreval("")
         escreval("")

         escreval(":::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::")
         escreval("")
         escreval("")
         escreval("     Bem-vindo ao tutorial do 'Jogo da Velha'. Neste jogo clássico, dois jogadores se enfrentarão em um tabuleiro")
         escreval("  3x3 para tentar formar uma linha, coluna ou  diagonal com seus símbolos.  Um jogador usará o símbolo  'X',  e o")
         escreval("  outro utilizará o símbolo 'O'. Vamos aprender a jogar passo a passo!")
         escreval("")
         escreval("  1. Apresentação do Tabuleiro:")
         escreval("     Antes de começarmos,  é importante entender a numeração das linhas e colunas do tabuleiro.  O tabuleiro será")
         escreval("     representado da seguinte maneira:")
         escreval()
         escreval("                                            3        |     |     ")
         escreval("                                                -----------------")
         escreval("                                            2        |     |     ")
         escreval("                                                -----------------")
         escreval("                                            1        |     |     ")
         escreval("")
         escreval("                                                  A     B     C  ")
         escreval()
         escreval()
         escreval("  2. Regras do Jogo:")
         escreval("     - Cada jogador escolherá seu símbolo: 'X' ou 'O'.")
         escreval("     - Os jogadores se alternam em suas jogadas.")
         escreval("     - O objetivo é formar uma linha, coluna ou diagonal com três")
         escreval("       de seus símbolos antes do oponente.")
         escreval("     - O primeiro jogador a conseguir isso ganha o jogo.")
         escreval("     - Se todas as casas do tabuleiro forem preenchidas  e  nenhum jogador conseguir formar uma linha,  coluna ou")
         escreval("       diagonal, o jogo termina em empate.")
         escreval()
         escreval()
         escreval("  3. Jogando o Jogo:")
         escreval("     - Para jogar, você deve informar uma letra (coluna) e um número (linha) para indicar onde deseja colocar seu")
         escreval("       símbolo.")
         escreval("     - Por exemplo, se você quer colocar seu símbolo na coluna 'B' e linha '2', você digitará 'B2' quando for sua")
         escreval("       vez.")
         escreval()
         escreval()
         escreval("  4. Exemplo de jogo:")
         escreval("     Vamos simular um exemplo de partida entre dois jogadores, Ana (X) e Pedro (O):")
         escreval()
         escreval("     Tabuleiro Inicial:")
         escreval()
         escreval()
         escreval()
         escreva("  DESEJA VER A SIMULAÇÃO [S/N]? >> ")
         leia(opcaoEscolhaTutorial)

         Escolha opcaoEscolhaTutorial
         caso "S", "s"
            limpatela

            tutorialSimulador()

         caso "N", "n"

            repeteJogo <- falso

         outrocaso
            escreval()
            escreval("    OPÇÃO INVÁLIDA. TENTE NOVAMENTE!")

            Para x <- 1 ate 20 faca
                 timer(5)
            fimPara

            limpatela
         fimEscolha
      Ate (repeteJogo = falso)

      escreval()
      escreval()
      escreval()
      escreval("     O jogo continua até que um dos jogadores vença ou ocorra um empate.")
      escreval()
      escreval()
      escreval("  5. Condições de Vitória:")
      escreval("     Um jogador vence se conseguir colocar três de seus símbolos (X ou O) em uma linha, coluna ou diagonal.")
      escreval("     No simulador, o jogador que utiliza 'X' venceu, pois formou uma linha na parte superior do tabuleiro.")
      escreval()
      escreval()
      escreval("  Conclusão:")
      escreval("     Agora você está pronto para jogar o 'Jogo da Velha'! Lembre-se das regras e tente planejar suas jogadas para")
      escreval("  vencer o oponente. Divirta-se!")
      
      escreval("")
      escreval("")
      escreval("    ( R ) Retornar")
      escreva("    >> ")
      leia(retorno_tut)

      Escolha retorno_tut
      caso "R", "r"
         limpatela
         menu_principal()

      outrocaso
         escreval()
         escreval("    OPÇÃO INVÁLIDA. TENTE NOVAMENTE!")

         Para x <- 1 ate 20 faca
              timer(5)
         fimPara

         tomadaDeDecisao_Tutorial()
      fimEscolha

   FimProcedimento
   //-----------------------------------------------------------------------------------------




   {
   //** MENU PRINCIPAL QUE É EXIBIDO APÓS O PROGRAMA PRINCIPAL PARA NAVEGAR ENTRE
   //** AS PÁGINAS.
   }
   Procedimento menu_principal()
   {
   ** VARIÁVEL
   ** - sair: SAIR DO LOOP.
   }
   Var
      sair: logico
      
   Inicio
      sair <- verdadeiro

      Repita
         limpatela
         
         escreval("*****************************************************************************************************************")
         escreval("***                                                JOGO DA VELHA                                              ***")
         escreval("*****************************************************************************************************************")
         escreval("")
         escreval("                                      BEM VINDO!... Escolha uma das opções abaixo.")
         escreval("")
         escreval("                   ( A ) Jogar              ( B ) Tutorial              ( S ) Sair")
         escreva("                   >> ")
         leia(opcao)
         escreval("")

         escolha opcao
         caso "A", "a"
            limpatela
            tomadaDeDecisao_Jogo()

         caso "B", "b"
            limpatela
            tomadaDeDecisao_Tutorial()

         caso "S", "s"
            escreval("                   Aplicação encerrada!")

            fimalgoritmo

         outrocaso
            escreval("                   OPÇÃO INVÁLIDA. TENTE NOVAMENTE!")

            Para x <- 1 ate 20 faca
                 timer(5)
            fimPara

         fimescolha
      Ate (sair = falso)
      
   Fimprocedimento
   //-----------------------------------------------------------------------------------------




   // PROGRAMA PRINCIPAL
Inicio
   escreval()
   escreval()
   escreval()
   escreval()
   escreval("  \/ -------------------------------------------------------------------------------------------------------- |¨|")
   escreval("  /\ -------------------------------------------------------------------------------------------------------- |_|")
   escreval("   |                                                                                                           | ")
   escreval("   |                                                                                                           | ")
   escreval("   |                                                                                                           | ")
   escreval("   |                                                                                                           | ")
   escreval("   |                  .~!~^    ^!7?7!^      :!7777~.     :~7777~.        ^~!!!~^.       .!^                    | ")
   escreval("   |                  .7?&P  ^GP?!~!?PG^  :PG?!~~75G~  .5BJ!~~75B?       G&777?JP5:    .BG#!                   | ")
   escreval("   |                     #P :&P       P&: B#.      .   P&:      7@7      GB     .P#:   GP 7&^                  | ")
   escreval("   |                    .#P ~@7       7@~.@5   .?YJYJ..#P       .@5      GB      7@~  5&~^^P&:                 | ")
   escreval("   |               .!:   #P .BG.     .GB. P&^   :::5@. Y@~      J@~      GB     ^BG. Y#?????GB.                | ")
   escreval("   |               .5B?75B~  :5GJ777JGY:  .JGY?77?YPJ   ?G5?77?PP~       P#JJJJ5P?. ?&~     .BP                | ")
   escreval("   |                 :~!~.     .^~!~^.       ^~!!~:       ^~!!~:         ::^^^^:    ::       .^                | ")
   escreval("   |                                                                                                           | ")
   escreval("   |                                                                                                           | ")
   escreval("   |                          !?       !? ~J???????: .?~       7!     .?~     ~J!                              | ")
   escreval("   |                          ~@Y     7@7 J@!        :@5      .#G     :@Y    ~&Y&7                             | ")
   escreval("   |                           !@?   ~@?  J@!^^^^^:  .&5      .#B!!!!!7@Y   ^#7 !&~                            | ")
   escreval("   |                            7@! :&Y   J@Y?JJJJ7  .&Y      .#B77777?@Y  :#B!!!G&^                           | ")
   escreval("   |                             ?&~B5    J@:        .&5      .#P     .@Y .BP~!!!~5#:                          | ")
   escreval("   |                              JB5     ?#5YYYYYY7 .GGYYYYY~ PY     :B? YG.      P5                          | ")
   escreval("   |                                        .......     .....             .         .                          | ")
   escreval("   |                                                                                                           | ")
   escreval("   |                                                                                                           | ")
   escreval("   |                                                                                                           | ")
   escreval("   |                                                                                                           | ")
   escreval("  |¨| -------------------------------------------------------------------------------------------------------- \/")
   escreval("  |_| -------------------------------------------------------------------------------------------------------- /\")
   escreval()
   escreval()
   escreval()
   escreval()

   {TEMPO QUE ESSA TELA FICA EXIBINDO}
   escreva("    Carregando ")

   Para x <- 1 ate 95 faca
        timer(5)
        escreva(".")
   fimPara
      
   menu_principal()

Fimalgoritmo
