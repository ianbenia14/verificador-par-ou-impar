;---------------------------------------------------
; Programa: Verificador de Par ou Ímpar
; Autor: Ian Benia
;---------------------------------------------------
; Este programa verifica se um número é par ou ímpar
; e armazena 0 para par, 1 para ímpar em RESULTADO.
;---------------------------------------------------

        ORG 0
        LDA     NUM         ; Carrega o número
        STA     TEMP        ; Copia para TEMP para manipular

LOOP:   LDA     TEMP
        SUB     DOIS
        JN      FIM         ; Se negativo, sai do loop
        STA     TEMP        ; Armazena resultado da subtração
        JMP     LOOP        ; Continua subtraindo

FIM:    LDA     TEMP
        STA     RESULTADO   ; Salva resultado: 0 (par) ou 1 (ímpar)

        HLT                 ; Fim do programa

; --- Dados ---
        ORG 20
NUM:        DB 7            ; Número a ser verificado (mude para testar)
TEMP:       DB 0
RESULTADO:  DB 0
DOIS:       DB 2
