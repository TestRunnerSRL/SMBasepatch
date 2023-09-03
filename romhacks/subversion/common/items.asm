!IBranchItem = #$887C
!ISetItem = #$8899
!ILoadSpecialGraphics = #$8764
!ISetGoto = #$8A24
!ISetPreInstructionCode = #$86C1
!IDrawCustom1 = #$E04F
!IDrawCustom2 = #$E067
!IGoto = #$8724
!IKill = #$86BC
!IPlayTrackNow = #$8BDD
!IJSR = #$8A2E
!ISetCounter8 = #$874E
!IGotoDecrement = #$873F
!IGotoIfDoorSet = #$8A72
!ISleep = #$86B4
!IVisibleItem = #i_visible_item
!IChozoItem = #i_chozo_item
!IHiddenItem = #i_hidden_item
!ILoadCustomGraphics = #i_load_custom_graphics
!IPickup = #i_live_pickup

!ITEM_RAM = $7E09A2

; SM Item Patches (bank $84)

; Add custom PLM that can asynchronously load in items
; ALL items in archipelago sm will use one of these 3 PLMs:
archipelago_visible_item_plm:
    dw i_visible_item_setup, p_visible_item       ;fc20 if we're org'ed at $84fc20
archipelago_chozo_item_plm:
    dw i_visible_item_setup, p_chozo_item       ;fc24 if we're org'ed at $84fc20
archipelago_hidden_item_plm:
    dw i_hidden_item_setup,  p_hidden_item       ;fc28 if we're org'ed at $84fc20


; new PLM graphics (only 2)
; each entry is the full set of arguments (10 bytes) for vanilla function $84:8764 Instruction - load item PLM GFX
;     see e.g. vanilla $84:E15B-E167 for an example structure of the data (charge beam plm)
;     this table is at $84f87c IF we're orged at $84f870
plm_graphics_entry_offworld_progression_item:
    dw offworld_graphics_data_progression_item    ; off-world progression item (pointer = $9100)
prog_item_eight_palette_indices: ; symbol provided for AP patcher to overwrite these 8 bytes:
    db $00, $00, $00, $00, $00, $00, $00, $00
; table entry 2 of 2:
plm_graphics_entry_offworld_item:
    dw offworld_graphics_data_item    ; off-world item (pointer = $9200)
nonprog_item_eight_palette_indices: ; symbol provided for AP patcher to overwrite these 8 bytes:
    db $00, $00, $00, $00, $00, $00, $00, $00

p_visible_item:
    dw !ILoadCustomGraphics
    dw !IBranchItem, .end
    dw !ISetGoto, .trigger
    dw !ISetPreInstructionCode, $df89
    .loop
    dw !IBranchItem, .end
    dw !IDrawCustom1
    dw !IDrawCustom2
    dw !IGoto, .loop
    .trigger
    dw !ISetItem
    DW $8C07 : DB $2B
    dw !IPickup
    .end
    dw !IGoto, $dfa9

p_chozo_item:
    dw !ILoadCustomGraphics
    dw !IBranchItem, p_visible_item_end
    dw !IJSR, $dfaf
    dw !IJSR, $dfc7
    dw !ISetGoto, p_visible_item_trigger
    dw !ISetPreInstructionCode, $df89
    dw !ISetCounter8 : db $16
    dw !IGoto, p_visible_item_loop

p_hidden_item:
    dw !ILoadCustomGraphics
    .loop2
    dw !IJSR, $e007
    dw !IBranchItem, .end
    dw !ISetGoto, .trigger
    dw !ISetPreInstructionCode, $df89
    dw !ISetCounter8 : db $16
;    dw !IStartHiddenDrawLoop
    .loop
    dw !IBranchItem, .end
    dw !IDrawCustom1
    dw !IDrawCustom2
    dw !IGotoDecrement, .loop
    dw !IJSR, $e020
    dw !IGoto, .loop2
    .trigger
    dw !ISetItem
    DW $8C07 : DB $2B
    dw !IPickup
    .end
    dw !IJSR, $e032
    dw !IGoto, .loop2


i_load_custom_graphics:
    JSL i_load_custom_graphics_shared
    RTS


i_visible_item_setup:
    jsl i_item_setup_shared
    jmp $ee64 ; generic visible item setup

i_hidden_item_setup:
    jsl i_item_setup_shared
    jmp $ee8e


; Pick up SM item
i_live_pickup:
    jsl i_live_pickup_multiworld
    rts

; X = byte offset into sm_item_plm_pickup_sequence_pointers of item to pick up
; (clobbers Y)
perform_item_pickup:
    phx
    phb
    phk : plb ; DB = $84
    ; sm_item_plm_pickup_sequence_pointers[entry]: ROM data pointer
    ; in turn...                                   ROM data pointer -> function pointer, function args
    ; (ROM data pointer's implied bank is bank $84)
    lda.l sm_item_plm_pickup_sequence_pointers, x
    tax ; X = ROM data pointer
    tay
    iny : iny ; Y = points to function args (pointer X + 2 bytes)
    jsr ($0000,x) ; X is not a function pointer but it points to one
    plb
    plx
    rtl


DrawPLMGraphicsLong:
    jsr $8764               ; Jump to original PLM graphics loading routine ($84:8764)
    rtl

; function pointer data usable for 'picking up' other players' items (which to SM is just a message box)
plm_sequence_generic_item_0_bitmask:
    ; $84:88F3 = generic item pickup function, parameters:
    ;   #$0000 = do not actually pick up an item (this gets harmlessly OR'ed into samus's equipment)
    ;   #$19 = reserve tank's message box id (will be overriden)
    dw $88F3, $0000 : db $19


pickup_code_small_ammo:
    DW $89D6, 5   ; missile update pointer, amount arg
pickup_code_big_ammo:    
    DW $89D6, 10  ; missile update pointer, amount arg



org $89B600
offworld_graphics_data_progression_item:
org $89B700
offworld_graphics_data_item:
; the randomizer's patcher will write the actual graphics here at $89:9100 and $89:9200
