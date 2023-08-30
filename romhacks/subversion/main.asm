lorom

macro a8()
	sep #$20
endmacro

macro a16()
	rep #$20
endmacro

macro i8()
	rep #$10
endmacro

macro ai8()
	sep #$30
endmacro

macro ai16()
	rep #$30
endmacro

macro i16()
	rep #$10
endmacro

org $00ffc0
    ;   0              f01234
    db "      SM RANDOMIZER  "
    db $30, $02, $0C, $04, $00, $01, $00, $20, $07, $DF, $F8

;org $808000				; Disable copy protection screen
;	db $ff

; Config flags
org $AC8000
;org $CEFF00
incsrc common/config.asm
incsrc common/playertable.asm
incsrc common/itemtable.asm
incsrc common/itemnames.asm
incsrc common/itemextras.asm
incsrc common/multiworld.asm

incsrc common/roomitems.asm

org $84F5D2
incsrc common/items.asm

; Super Metroid custom Samus sprite "engine" by Artheau
;incsrc "sprite/sprite.asm"

;org $85FF00
;incsrc ../../common/nofanfare.asm

; Start anywhere patch, not used right now until graph based generation is in.
; incsrc startanywhere.asm

; Add code to the main code bank
;org $e58000
;org $e58800


;incompatible with zfactor?
org $b8cf00
;incsrc ROMProject/ASM/common/seeddata.asm

;org $e5c800
;incsrc ../../common/startitem.asm

org $e5d000

org $e5e000
