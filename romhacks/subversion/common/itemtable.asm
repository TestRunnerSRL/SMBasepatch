; Itemtable (Supports 512 locations)
;
; Item Destination Type = Where item is headed:
;    $0000 = regular old SM item
;    $0001 = item for entirely someone else
;    $0002 = SM item link item that sends to the current player and others
; Item Id = Tells us the item at this location. Value is always an index into message_item_names aka item_names table.
;           if <  #$0015,
;               SM item (for us or for any other SM player or item link). Value is also valid for indexing into
;               sm_item_graphics and sm_item_plm_pickup_sequence_pointers.
;           if >= #$0015,
;               Non-SM offworld item. The set of items matching this is a subset of those with
;               Item Destination Type == $0001.
; Other Player Index = Index into rando_player_name_table and rando_player_id_table identifying who the item is sent to.
;                      Can be self, too, but that should be handled by checking for Item Destination Type = $0000.
; Advancement = 0 or 1. Indicates which offworld sprite to use if Item Id >= #$0015 (non-SM item).
;
; indexed by item location id

rando_item_table:
;          IDstT  IId    OPI    Adv't
	dw $0000, $0001, $0000, $0000 ; 0 - Power Bomb (Crateria surface)
	dw $0000, $0001, $0000, $0000 ; 1 - Missile (outside Wrecked Ship bottom)
	dw $0000, $0001, $0000, $0000 ; 2 - Missile (outside Wrecked Ship top)
	dw $0000, $0001, $0000, $0000 ; 3 - Missile (outside Wrecked Ship middle)
	dw $0000, $0001, $0000, $0000 ; 4 - Missile (Crateria moat)
	dw $0000, $0001, $0000, $0000 ; 5 - Energy Tank (Crateria gauntlet)
	dw $0000, $0001, $0000, $0000 ; 6 - Missile (Crateria bottom)
	dw $0000, $0001, $0000, $0000 ; 7 - Bomb
	dw $0000, $0001, $0000, $0000 ; 8 - Energy Tank (Crateria tunnel to Brinstar)
	dw $0000, $0001, $0000, $0000 ; 9 - Missile (Crateria gauntlet right)
	dw $0000, $0001, $0000, $0000 ; 10 - Missile (Crateria gauntlet left)
	dw $0000, $0001, $0000, $0000 ; 11 - Super Missile (Crateria)
	dw $0000, $0001, $0000, $0000 ; 12 - Missile (Crateria middle)
	dw $0000, $0001, $0000, $0000 ; 13 - Power Bomb (green Brinstar bottom)
	dw $0000, $0001, $0000, $0000 ; 14 - Super Missile (pink Brinstar)
	dw $0000, $0001, $0000, $0000 ; 15 - Missile (green Brinstar below super missile)
	dw $0000, $0001, $0000, $0000 ; 16 - Super Missile (green Brinstar top)
	dw $0000, $0001, $0000, $0000 ; 17 - Reserve Tank (Brinstar)
	dw $0000, $0001, $0000, $0000 ; 18 - Missile (green Brinstar behind missile)
	dw $0000, $0001, $0000, $0000 ; 19 - Missile (green Brinstar behind Reserve Tank)
	dw $0000, $0001, $0000, $0000 ; 20 - Unused
	dw $0000, $0001, $0000, $0000 ; 21 - Missile (pink Brinstar top)
	dw $0000, $0001, $0000, $0000 ; 22 - Missile (pink Brinstar bottom)
	dw $0000, $0001, $0000, $0000 ; 23 - Charge Beam
	dw $0000, $0001, $0000, $0000 ; 24 - Power Bomb (pink Brinstar)
	dw $0000, $0001, $0000, $0000 ; 25 - Missile (green Brinstar pipe)
	dw $0001, $000C, $0000, $0000 ; 26 - Morphing Ball
	dw $0000, $0001, $0000, $0000 ; 27 - Power Bomb (blue Brinstar)
	dw $0000, $0001, $0000, $0000 ; 28 - Missile (blue Brinstar middle)
	dw $0000, $0001, $0000, $0000 ; 29 - Energy Tank (blue Brinstar)
	dw $0000, $0001, $0000, $0000 ; 30 - Energy Tank (green Brinstar bottom)
	dw $0000, $0001, $0000, $0000 ; 31 - Super Missile (green Brinstar bottom)
	dw $0000, $0001, $0000, $0000 ; 32 - Unused
	dw $0000, $0001, $0000, $0000 ; 33 - Energy Tank (pink Brinstar bottom)
	dw $0000, $0001, $0000, $0000 ; 34 - Missile (blue Brinstar bottom)
	dw $0000, $0001, $0000, $0000 ; 35 - Energy Tank (pink Brinstar top)
	dw $0000, $0001, $0000, $0000 ; 36 - Missile (blue Brinstar top)
	dw $0000, $0001, $0000, $0000 ; 37 - Missile (blue Brinstar behind missile)
	dw $0000, $0001, $0000, $0000 ; 38 - X-Ray Visor
	dw $0000, $0001, $0000, $0000 ; 39 - Power Bomb (red Brinstar sidehopper room)
	dw $0000, $0001, $0000, $0000 ; 40 - Power Bomb (red Brinstar spike room)
	dw $0000, $0001, $0000, $0000 ; 41 - Missile (red Brinstar spike room)
	dw $0000, $0001, $0000, $0000 ; 42 - Spazer
	dw $0000, $0001, $0000, $0000 ; 43 - Energy Tank (Kraid)
	dw $0000, $0001, $0000, $0000 ; 44 - Missile (Kraid)
	dw $0000, $0001, $0000, $0000 ; 45 - Unused
	dw $0000, $0001, $0000, $0000 ; 46 - Unused
	dw $0000, $0001, $0000, $0000 ; 47 - Unused
	dw $0000, $0001, $0000, $0000 ; 48 - Varia Suit
	dw $0000, $0001, $0000, $0000 ; 49 - Missile (lava room)
	dw $0000, $0001, $0000, $0000 ; 50 - Ice Beam
	dw $0000, $0001, $0000, $0000 ; 51 - Missile (below Ice Beam)
	dw $0000, $0001, $0000, $0000 ; 52 - Energy Tank (Crocomire)
	dw $0000, $0001, $0000, $0000 ; 53 - Hi-Jump Boots
	dw $0000, $0001, $0000, $0000 ; 54 - Missile (above Crocomire)
	dw $0000, $0001, $0000, $0000 ; 55 - Missile (Hi-Jump Boots)
	dw $0000, $0001, $0000, $0000 ; 56 - Energy Tank (Hi-Jump Boots)
	dw $0000, $0001, $0000, $0000 ; 57 - Power Bomb (Crocomire)
	dw $0000, $0001, $0000, $0000 ; 58 - Missile (below Crocomire)
	dw $0000, $0001, $0000, $0000 ; 59 - Missile (Grapple Beam)
	dw $0000, $0001, $0000, $0000 ; 60 - Grapple Beam
	dw $0000, $0001, $0000, $0000 ; 61 - Reserve Tank (Norfair)
	dw $0000, $0001, $0000, $0000 ; 62 - Missile (Norfair Reserve Tank)
	dw $0000, $0001, $0000, $0000 ; 63 - Missile (bubble Norfair green door)
	dw $0000, $0001, $0000, $0000 ; 64 - Missile (bubble Norfair)
	dw $0000, $0001, $0000, $0000 ; 65 - Missile (Speed Booster)
	dw $0000, $0001, $0000, $0000 ; 66 - Speed Booster
	dw $0000, $0001, $0000, $0000 ; 67 - Missile (Wave Beam)
	dw $0000, $0001, $0000, $0000 ; 68 - Wave Beam
	dw $0000, $0001, $0000, $0000 ; 69 - Unused
	dw $0000, $0001, $0000, $0000 ; 70 - Missile (Gold Torizo)
	dw $0000, $0001, $0000, $0000 ; 71 - Super Missile (Gold Torizo)
	dw $0000, $0001, $0000, $0000 ; 72 - Unused
	dw $0000, $0001, $0000, $0000 ; 73 - Missile (Mickey Mouse room)
	dw $0000, $0001, $0000, $0000 ; 74 - Missile (lower Norfair above fire flea room)
	dw $0000, $0001, $0000, $0000 ; 75 - Power Bomb (lower Norfair above fire flea room)
	dw $0000, $0001, $0000, $0000 ; 76 - Power Bomb (above Ridley)
	dw $0000, $0001, $0000, $0000 ; 77 - Missile (lower Norfair near Wave Beam)
	dw $0000, $0001, $0000, $0000 ; 78 - Energy Tank (Ridley)
	dw $0000, $0001, $0000, $0000 ; 79 - Screw Attack
	dw $0000, $0001, $0000, $0000 ; 80 - Energy Tank (lower Norfair fire flea room)
	dw $0000, $0001, $0000, $0000 ; 81 - Unused
	dw $0000, $0001, $0000, $0000 ; 82 - Unused
	dw $0000, $0001, $0000, $0000 ; 83 - Unused
	dw $0000, $0001, $0000, $0000 ; 84 - Unused
	dw $0000, $0001, $0000, $0000 ; 85 - Unused
	dw $0000, $0001, $0000, $0000 ; 86 - Unused
	dw $0000, $0001, $0000, $0000 ; 87 - Unused
	dw $0000, $0001, $0000, $0000 ; 88 - Unused
	dw $0000, $0001, $0000, $0000 ; 89 - Unused
	dw $0000, $0001, $0000, $0000 ; 90 - Unused
	dw $0000, $0001, $0000, $0000 ; 91 - Unused
	dw $0000, $0001, $0000, $0000 ; 92 - Unused
	dw $0000, $0001, $0000, $0000 ; 93 - Unused
	dw $0000, $0001, $0000, $0000 ; 94 - Unused
	dw $0000, $0001, $0000, $0000 ; 95 - Unused
	dw $0000, $0001, $0000, $0000 ; 96 - Unused
	dw $0000, $0001, $0000, $0000 ; 97 - Unused
	dw $0000, $0001, $0000, $0000 ; 98 - Unused
	dw $0000, $0001, $0000, $0000 ; 99 - Unused
	dw $0000, $0001, $0000, $0000 ; 100 - Unused
	dw $0000, $0001, $0000, $0000 ; 101 - Unused
	dw $0000, $0001, $0000, $0000 ; 102 - Unused
	dw $0000, $0001, $0000, $0000 ; 103 - Unused
	dw $0000, $0001, $0000, $0000 ; 104 - Unused
	dw $0000, $0001, $0000, $0000 ; 105 - Unused
	dw $0000, $0001, $0000, $0000 ; 106 - Unused
	dw $0000, $0001, $0000, $0000 ; 107 - Unused
	dw $0000, $0001, $0000, $0000 ; 108 - Unused
	dw $0000, $0001, $0000, $0000 ; 109 - Unused
	dw $0000, $0001, $0000, $0000 ; 110 - Unused
	dw $0000, $0001, $0000, $0000 ; 111 - Unused
	dw $0000, $0001, $0000, $0000 ; 112 - Unused
	dw $0000, $0001, $0000, $0000 ; 113 - Unused
	dw $0000, $0001, $0000, $0000 ; 114 - Unused
	dw $0000, $0001, $0000, $0000 ; 115 - Unused
	dw $0000, $0001, $0000, $0000 ; 116 - Unused
	dw $0000, $0001, $0000, $0000 ; 117 - Unused
	dw $0000, $0001, $0000, $0000 ; 118 - Unused
	dw $0000, $0001, $0000, $0000 ; 119 - Unused
	dw $0000, $0001, $0000, $0000 ; 120 - Unused
	dw $0000, $0001, $0000, $0000 ; 121 - Unused
	dw $0000, $0001, $0000, $0000 ; 122 - Unused
	dw $0000, $0001, $0000, $0000 ; 123 - Unused
	dw $0000, $0001, $0000, $0000 ; 124 - Unused
	dw $0000, $0001, $0000, $0000 ; 125 - Unused
	dw $0000, $0001, $0000, $0000 ; 126 - Unused
	dw $0000, $0001, $0000, $0000 ; 127 - Unused
	dw $0000, $0001, $0000, $0000 ; 128 - Missile (Wrecked Ship middle)
	dw $0000, $0001, $0000, $0000 ; 129 - Reserve Tank (Wrecked Ship)
	dw $0000, $0001, $0000, $0000 ; 130 - Missile (Gravity Suit)
	dw $0000, $0001, $0000, $0000 ; 131 - Missile (Wrecked Ship top)
	dw $0000, $0001, $0000, $0000 ; 132 - Energy Tank (Wrecked Ship)
	dw $0000, $0001, $0000, $0000 ; 133 - Super Missile (Wrecked Ship left)
	dw $0000, $0001, $0000, $0000 ; 134 - Super Missile (Wrecked Ship right)
	dw $0000, $0001, $0000, $0000 ; 135 - Gravity Suit
	dw $0000, $0001, $0000, $0000 ; 136 - Missile (green Maridia shinespark)
	dw $0000, $0001, $0000, $0000 ; 137 - Super Missile (green Maridia)
	dw $0000, $0001, $0000, $0000 ; 138 - Energy Tank (green Maridia)
	dw $0000, $0001, $0000, $0000 ; 139 - Missile (green Maridia tatori)
	dw $0000, $0001, $0000, $0000 ; 140 - Super Missile (yellow Maridia)
	dw $0000, $0001, $0000, $0000 ; 141 - Missile (yellow Maridia super missile)
	dw $0000, $0001, $0000, $0000 ; 142 - Missile (yellow Maridia false wall)
	dw $0000, $0001, $0000, $0000 ; 143 - Plasma Beam
	dw $0000, $0001, $0000, $0000 ; 144 - Missile (left Maridia sand pit room)
	dw $0000, $0001, $0000, $0000 ; 145 - Reserve Tank (Maridia)
	dw $0000, $0001, $0000, $0000 ; 146 - Missile (right Maridia sand pit room)
	dw $0000, $0001, $0000, $0000 ; 147 - Power Bomb (right Maridia sand pit room)
	dw $0000, $0001, $0000, $0000 ; 148 - Missile (pink Maridia)
	dw $0000, $0001, $0000, $0000 ; 149 - Super Missile (pink Maridia)
	dw $0000, $0001, $0000, $0000 ; 150 - Spring Ball
	dw $0000, $0001, $0000, $0000 ; 151 - Missile (Draygon)
	dw $0000, $0001, $0000, $0000 ; 152 - Energy Tank (Botwoon)
	dw $0000, $0001, $0000, $0000 ; 153 - Unused
	dw $0000, $0001, $0000, $0000 ; 154 - Space Jump
	dw $0000, $0001, $0000, $0000 ; 155 - Unused
	dw $0000, $0001, $0000, $0000 ; 156 - Unused
	dw $0000, $0001, $0000, $0000 ; 157 - Unused
	dw $0000, $0001, $0000, $0000 ; 158 - Unused
	dw $0000, $0001, $0000, $0000 ; 159 - Unused
	dw $0000, $0001, $0000, $0000 ; 160 - Unused
	dw $0000, $0001, $0000, $0000 ; 161 - Unused
	dw $0000, $0001, $0000, $0000 ; 162 - Unused
	dw $0000, $0001, $0000, $0000 ; 163 - Unused
	dw $0000, $0001, $0000, $0000 ; 164 - Unused
	dw $0000, $0001, $0000, $0000 ; 165 - Unused
	dw $0000, $0001, $0000, $0000 ; 166 - Unused
	dw $0000, $0001, $0000, $0000 ; 167 - Unused
	dw $0000, $0001, $0000, $0000 ; 168 - Unused
	dw $0000, $0001, $0000, $0000 ; 169 - Unused
	dw $0000, $0001, $0000, $0000 ; 170 - Unused
	dw $0000, $0001, $0000, $0000 ; 171 - Unused
	dw $0000, $0001, $0000, $0000 ; 172 - Unused
	dw $0000, $0001, $0000, $0000 ; 173 - Unused
	dw $0000, $0001, $0000, $0000 ; 174 - Unused
	dw $0000, $0001, $0000, $0000 ; 175 - Unused
	dw $0000, $0001, $0000, $0000 ; 176 - Unused
	dw $0000, $0001, $0000, $0000 ; 177 - Unused
	dw $0000, $0001, $0000, $0000 ; 178 - Unused
	dw $0000, $0001, $0000, $0000 ; 179 - Unused
	dw $0000, $0001, $0000, $0000 ; 180 - Unused
	dw $0000, $0001, $0000, $0000 ; 181 - Unused
	dw $0000, $0001, $0000, $0000 ; 182 - Unused
	dw $0000, $0001, $0000, $0000 ; 183 - Unused
	dw $0000, $0001, $0000, $0000 ; 184 - Unused
	dw $0000, $0001, $0000, $0000 ; 185 - Unused
	dw $0000, $0001, $0000, $0000 ; 186 - Unused
	dw $0000, $0001, $0000, $0000 ; 187 - Unused
	dw $0000, $0001, $0000, $0000 ; 188 - Unused
	dw $0000, $0001, $0000, $0000 ; 189 - Unused
	dw $0000, $0001, $0000, $0000 ; 190 - Unused
	dw $0000, $0001, $0000, $0000 ; 191 - Unused
	dw $0000, $0001, $0000, $0000 ; 192 - Unused
	dw $0000, $0001, $0000, $0000 ; 193 - Unused
	dw $0000, $0001, $0000, $0000 ; 194 - Unused
	dw $0000, $0001, $0000, $0000 ; 195 - Unused
	dw $0000, $0001, $0000, $0000 ; 196 - Unused
	dw $0000, $0001, $0000, $0000 ; 197 - Unused
	dw $0000, $0001, $0000, $0000 ; 198 - Unused
	dw $0000, $0001, $0000, $0000 ; 199 - Unused
	dw $0000, $0001, $0000, $0000 ; 200 - Unused
	dw $0000, $0001, $0000, $0000 ; 201 - Unused
	dw $0000, $0001, $0000, $0000 ; 202 - Unused
	dw $0000, $0001, $0000, $0000 ; 203 - Unused
	dw $0000, $0001, $0000, $0000 ; 204 - Unused
	dw $0000, $0001, $0000, $0000 ; 205 - Unused
	dw $0000, $0001, $0000, $0000 ; 206 - Unused
	dw $0000, $0001, $0000, $0000 ; 207 - Unused
	dw $0000, $0001, $0000, $0000 ; 208 - Unused
	dw $0000, $0001, $0000, $0000 ; 209 - Unused
	dw $0000, $0001, $0000, $0000 ; 210 - Unused
	dw $0000, $0001, $0000, $0000 ; 211 - Unused
	dw $0000, $0001, $0000, $0000 ; 212 - Unused
	dw $0000, $0001, $0000, $0000 ; 213 - Unused
	dw $0000, $0001, $0000, $0000 ; 214 - Unused
	dw $0000, $0001, $0000, $0000 ; 215 - Unused
	dw $0000, $0001, $0000, $0000 ; 216 - Unused
	dw $0000, $0001, $0000, $0000 ; 217 - Unused
	dw $0000, $0001, $0000, $0000 ; 218 - Unused
	dw $0000, $0001, $0000, $0000 ; 219 - Unused
	dw $0000, $0001, $0000, $0000 ; 220 - Unused
	dw $0000, $0001, $0000, $0000 ; 221 - Unused
	dw $0000, $0001, $0000, $0000 ; 222 - Unused
	dw $0000, $0001, $0000, $0000 ; 223 - Unused
	dw $0000, $0001, $0000, $0000 ; 224 - Unused
	dw $0000, $0001, $0000, $0000 ; 225 - Unused
	dw $0000, $0001, $0000, $0000 ; 226 - Unused
	dw $0000, $0001, $0000, $0000 ; 227 - Unused
	dw $0000, $0001, $0000, $0000 ; 228 - Unused
	dw $0000, $0001, $0000, $0000 ; 229 - Unused
	dw $0000, $0001, $0000, $0000 ; 230 - Unused
	dw $0000, $0001, $0000, $0000 ; 231 - Unused
	dw $0000, $0001, $0000, $0000 ; 232 - Unused
	dw $0000, $0001, $0000, $0000 ; 233 - Unused
	dw $0000, $0001, $0000, $0000 ; 234 - Unused
	dw $0000, $0001, $0000, $0000 ; 235 - Unused
	dw $0000, $0001, $0000, $0000 ; 236 - Unused
	dw $0000, $0001, $0000, $0000 ; 237 - Unused
	dw $0000, $0001, $0000, $0000 ; 238 - Unused
	dw $0000, $0001, $0000, $0000 ; 239 - Unused
	dw $0000, $0001, $0000, $0000 ; 240 - Unused
	dw $0000, $0001, $0000, $0000 ; 241 - Unused
	dw $0000, $0001, $0000, $0000 ; 242 - Unused
	dw $0000, $0001, $0000, $0000 ; 243 - Unused
	dw $0000, $0001, $0000, $0000 ; 244 - Unused
	dw $0000, $0001, $0000, $0000 ; 245 - Unused
	dw $0000, $0001, $0000, $0000 ; 246 - Unused
	dw $0000, $0001, $0000, $0000 ; 247 - Unused
	dw $0000, $0001, $0000, $0000 ; 248 - Unused
	dw $0000, $0001, $0000, $0000 ; 249 - Unused
	dw $0000, $0001, $0000, $0000 ; 250 - Unused
	dw $0000, $0001, $0000, $0000 ; 251 - Unused
	dw $0000, $0001, $0000, $0000 ; 252 - Unused
	dw $0000, $0001, $0000, $0000 ; 253 - Unused
	dw $0000, $0001, $0000, $0000 ; 254 - Unused
	dw $0000, $0001, $0000, $0000 ; 255 - Unused - never valid due to special mw receive meaning of location id == 0xFF
	dw $0000, $0001, $0000, $0000 ; 256 - Unused
	dw $0000, $0001, $0000, $0000 ; 257 - Unused
	dw $0000, $0001, $0000, $0000 ; 258 - Unused
	dw $0000, $0001, $0000, $0000 ; 259 - Unused
	dw $0000, $0001, $0000, $0000 ; 260 - Unused
	dw $0000, $0001, $0000, $0000 ; 261 - Unused
	dw $0000, $0001, $0000, $0000 ; 262 - Unused
	dw $0000, $0001, $0000, $0000 ; 263 - Unused
	dw $0000, $0001, $0000, $0000 ; 264 - Unused
	dw $0000, $0001, $0000, $0000 ; 265 - Unused
	dw $0000, $0001, $0000, $0000 ; 266 - Unused
	dw $0000, $0001, $0000, $0000 ; 267 - Unused
	dw $0000, $0001, $0000, $0000 ; 268 - Unused
	dw $0000, $0001, $0000, $0000 ; 269 - Unused
	dw $0000, $0001, $0000, $0000 ; 270 - Unused
	dw $0000, $0001, $0000, $0000 ; 271 - Unused
	dw $0000, $0001, $0000, $0000 ; 272 - Unused
	dw $0000, $0001, $0000, $0000 ; 273 - Unused
	dw $0000, $0001, $0000, $0000 ; 274 - Unused
	dw $0000, $0001, $0000, $0000 ; 275 - Unused
	dw $0000, $0001, $0000, $0000 ; 276 - Unused
	dw $0000, $0001, $0000, $0000 ; 277 - Unused
	dw $0000, $0001, $0000, $0000 ; 278 - Unused
	dw $0000, $0001, $0000, $0000 ; 279 - Unused
	dw $0000, $0001, $0000, $0000 ; 280 - Unused
	dw $0000, $0001, $0000, $0000 ; 281 - Unused
	dw $0000, $0001, $0000, $0000 ; 282 - Unused
	dw $0000, $0001, $0000, $0000 ; 283 - Unused
	dw $0000, $0001, $0000, $0000 ; 284 - Unused
	dw $0000, $0001, $0000, $0000 ; 285 - Unused
	dw $0000, $0001, $0000, $0000 ; 286 - Unused
	dw $0000, $0001, $0000, $0000 ; 287 - Unused
	dw $0000, $0001, $0000, $0000 ; 288 - Unused
	dw $0000, $0001, $0000, $0000 ; 289 - Unused
	dw $0000, $0001, $0000, $0000 ; 290 - Unused
	dw $0000, $0001, $0000, $0000 ; 291 - Unused
	dw $0000, $0001, $0000, $0000 ; 292 - Unused
	dw $0000, $0001, $0000, $0000 ; 293 - Unused
	dw $0000, $0001, $0000, $0000 ; 294 - Unused
	dw $0000, $0001, $0000, $0000 ; 295 - Unused
	dw $0000, $0001, $0000, $0000 ; 296 - Unused
	dw $0000, $0001, $0000, $0000 ; 297 - Unused
	dw $0000, $0001, $0000, $0000 ; 298 - Unused
	dw $0000, $0001, $0000, $0000 ; 299 - Unused
	dw $0000, $0001, $0000, $0000 ; 300 - Unused
	dw $0000, $0001, $0000, $0000 ; 301 - Unused
	dw $0000, $0001, $0000, $0000 ; 302 - Unused
	dw $0000, $0001, $0000, $0000 ; 303 - Unused
	dw $0000, $0001, $0000, $0000 ; 304 - Unused
	dw $0000, $0001, $0000, $0000 ; 305 - Unused
	dw $0000, $0001, $0000, $0000 ; 306 - Unused
	dw $0000, $0001, $0000, $0000 ; 307 - Unused
	dw $0000, $0001, $0000, $0000 ; 308 - Unused
	dw $0000, $0001, $0000, $0000 ; 309 - Unused
	dw $0000, $0001, $0000, $0000 ; 310 - Unused
	dw $0000, $0001, $0000, $0000 ; 311 - Unused
	dw $0000, $0001, $0000, $0000 ; 312 - Unused
	dw $0000, $0001, $0000, $0000 ; 313 - Unused
	dw $0000, $0001, $0000, $0000 ; 314 - Unused
	dw $0000, $0001, $0000, $0000 ; 315 - Unused
	dw $0000, $0001, $0000, $0000 ; 316 - Unused
	dw $0000, $0001, $0000, $0000 ; 317 - Unused
	dw $0000, $0001, $0000, $0000 ; 318 - Unused
	dw $0000, $0001, $0000, $0000 ; 319 - Unused
	dw $0000, $0001, $0000, $0000 ; 320 - Unused
	dw $0000, $0001, $0000, $0000 ; 321 - Unused
	dw $0000, $0001, $0000, $0000 ; 322 - Unused
	dw $0000, $0001, $0000, $0000 ; 323 - Unused
	dw $0000, $0001, $0000, $0000 ; 324 - Unused
	dw $0000, $0001, $0000, $0000 ; 325 - Unused
	dw $0000, $0001, $0000, $0000 ; 326 - Unused
	dw $0000, $0001, $0000, $0000 ; 327 - Unused
	dw $0000, $0001, $0000, $0000 ; 328 - Unused
	dw $0000, $0001, $0000, $0000 ; 329 - Unused
	dw $0000, $0001, $0000, $0000 ; 330 - Unused
	dw $0000, $0001, $0000, $0000 ; 331 - Unused
	dw $0000, $0001, $0000, $0000 ; 332 - Unused
	dw $0000, $0001, $0000, $0000 ; 333 - Unused
	dw $0000, $0001, $0000, $0000 ; 334 - Unused
	dw $0000, $0001, $0000, $0000 ; 335 - Unused
	dw $0000, $0001, $0000, $0000 ; 336 - Unused
	dw $0000, $0001, $0000, $0000 ; 337 - Unused
	dw $0000, $0001, $0000, $0000 ; 338 - Unused
	dw $0000, $0001, $0000, $0000 ; 339 - Unused
	dw $0000, $0001, $0000, $0000 ; 340 - Unused
	dw $0000, $0001, $0000, $0000 ; 341 - Unused
	dw $0000, $0001, $0000, $0000 ; 342 - Unused
	dw $0000, $0001, $0000, $0000 ; 343 - Unused
	dw $0000, $0001, $0000, $0000 ; 344 - Unused
	dw $0000, $0001, $0000, $0000 ; 345 - Unused
	dw $0000, $0001, $0000, $0000 ; 346 - Unused
	dw $0000, $0001, $0000, $0000 ; 347 - Unused
	dw $0000, $0001, $0000, $0000 ; 348 - Unused
	dw $0000, $0001, $0000, $0000 ; 349 - Unused
	dw $0000, $0001, $0000, $0000 ; 350 - Unused
	dw $0000, $0001, $0000, $0000 ; 351 - Unused
	dw $0000, $0001, $0000, $0000 ; 352 - Unused
	dw $0000, $0001, $0000, $0000 ; 353 - Unused
	dw $0000, $0001, $0000, $0000 ; 354 - Unused
	dw $0000, $0001, $0000, $0000 ; 355 - Unused
	dw $0000, $0001, $0000, $0000 ; 356 - Unused
	dw $0000, $0001, $0000, $0000 ; 357 - Unused
	dw $0000, $0001, $0000, $0000 ; 358 - Unused
	dw $0000, $0001, $0000, $0000 ; 359 - Unused
	dw $0000, $0001, $0000, $0000 ; 360 - Unused
	dw $0000, $0001, $0000, $0000 ; 361 - Unused
	dw $0000, $0001, $0000, $0000 ; 362 - Unused
	dw $0000, $0001, $0000, $0000 ; 363 - Unused
	dw $0000, $0001, $0000, $0000 ; 364 - Unused
	dw $0000, $0001, $0000, $0000 ; 365 - Unused
	dw $0000, $0001, $0000, $0000 ; 366 - Unused
	dw $0000, $0001, $0000, $0000 ; 367 - Unused
	dw $0000, $0001, $0000, $0000 ; 368 - Unused
	dw $0000, $0001, $0000, $0000 ; 369 - Unused
	dw $0000, $0001, $0000, $0000 ; 370 - Unused
	dw $0000, $0001, $0000, $0000 ; 371 - Unused
	dw $0000, $0001, $0000, $0000 ; 372 - Unused
	dw $0000, $0001, $0000, $0000 ; 373 - Unused
	dw $0000, $0001, $0000, $0000 ; 374 - Unused
	dw $0000, $0001, $0000, $0000 ; 375 - Unused
	dw $0000, $0001, $0000, $0000 ; 376 - Unused
	dw $0000, $0001, $0000, $0000 ; 377 - Unused
	dw $0000, $0001, $0000, $0000 ; 378 - Unused
	dw $0000, $0001, $0000, $0000 ; 379 - Unused
	dw $0000, $0001, $0000, $0000 ; 380 - Unused
	dw $0000, $0001, $0000, $0000 ; 381 - Unused
	dw $0000, $0001, $0000, $0000 ; 382 - Unused
	dw $0000, $0001, $0000, $0000 ; 383 - Unused
	dw $0000, $0001, $0000, $0000 ; 384 - Unused
	dw $0000, $0001, $0000, $0000 ; 385 - Unused
	dw $0000, $0001, $0000, $0000 ; 386 - Unused
	dw $0000, $0001, $0000, $0000 ; 387 - Unused
	dw $0000, $0001, $0000, $0000 ; 388 - Unused
	dw $0000, $0001, $0000, $0000 ; 389 - Unused
	dw $0000, $0001, $0000, $0000 ; 390 - Unused
	dw $0000, $0001, $0000, $0000 ; 391 - Unused
	dw $0000, $0001, $0000, $0000 ; 392 - Unused
	dw $0000, $0001, $0000, $0000 ; 393 - Unused
	dw $0000, $0001, $0000, $0000 ; 394 - Unused
	dw $0000, $0001, $0000, $0000 ; 395 - Unused
	dw $0000, $0001, $0000, $0000 ; 396 - Unused
	dw $0000, $0001, $0000, $0000 ; 397 - Unused
	dw $0000, $0001, $0000, $0000 ; 398 - Unused
	dw $0000, $0001, $0000, $0000 ; 399 - Unused
	dw $0000, $0001, $0000, $0000 ; 400 - Unused
	dw $0000, $0001, $0000, $0000 ; 401 - Unused
	dw $0000, $0001, $0000, $0000 ; 402 - Unused
	dw $0000, $0001, $0000, $0000 ; 403 - Unused
	dw $0000, $0001, $0000, $0000 ; 404 - Unused
	dw $0000, $0001, $0000, $0000 ; 405 - Unused
	dw $0000, $0001, $0000, $0000 ; 406 - Unused
	dw $0000, $0001, $0000, $0000 ; 407 - Unused
	dw $0000, $0001, $0000, $0000 ; 408 - Unused
	dw $0000, $0001, $0000, $0000 ; 409 - Unused
	dw $0000, $0001, $0000, $0000 ; 410 - Unused
	dw $0000, $0001, $0000, $0000 ; 411 - Unused
	dw $0000, $0001, $0000, $0000 ; 412 - Unused
	dw $0000, $0001, $0000, $0000 ; 413 - Unused
	dw $0000, $0001, $0000, $0000 ; 414 - Unused
	dw $0000, $0001, $0000, $0000 ; 415 - Unused
	dw $0000, $0001, $0000, $0000 ; 416 - Unused
	dw $0000, $0001, $0000, $0000 ; 417 - Unused
	dw $0000, $0001, $0000, $0000 ; 418 - Unused
	dw $0000, $0001, $0000, $0000 ; 419 - Unused
	dw $0000, $0001, $0000, $0000 ; 420 - Unused
	dw $0000, $0001, $0000, $0000 ; 421 - Unused
	dw $0000, $0001, $0000, $0000 ; 422 - Unused
	dw $0000, $0001, $0000, $0000 ; 423 - Unused
	dw $0000, $0001, $0000, $0000 ; 424 - Unused
	dw $0000, $0001, $0000, $0000 ; 425 - Unused
	dw $0000, $0001, $0000, $0000 ; 426 - Unused
	dw $0000, $0001, $0000, $0000 ; 427 - Unused
	dw $0000, $0001, $0000, $0000 ; 428 - Unused
	dw $0000, $0001, $0000, $0000 ; 429 - Unused
	dw $0000, $0001, $0000, $0000 ; 430 - Unused
	dw $0000, $0001, $0000, $0000 ; 431 - Unused
	dw $0000, $0001, $0000, $0000 ; 432 - Unused
	dw $0000, $0001, $0000, $0000 ; 433 - Unused
	dw $0000, $0001, $0000, $0000 ; 434 - Unused
	dw $0000, $0001, $0000, $0000 ; 435 - Unused
	dw $0000, $0001, $0000, $0000 ; 436 - Unused
	dw $0000, $0001, $0000, $0000 ; 437 - Unused
	dw $0000, $0001, $0000, $0000 ; 438 - Unused
	dw $0000, $0001, $0000, $0000 ; 439 - Unused
	dw $0000, $0001, $0000, $0000 ; 440 - Unused
	dw $0000, $0001, $0000, $0000 ; 441 - Unused
	dw $0000, $0001, $0000, $0000 ; 442 - Unused
	dw $0000, $0001, $0000, $0000 ; 443 - Unused
	dw $0000, $0001, $0000, $0000 ; 444 - Unused
	dw $0000, $0001, $0000, $0000 ; 445 - Unused
	dw $0000, $0001, $0000, $0000 ; 446 - Unused
	dw $0000, $0001, $0000, $0000 ; 447 - Unused
	dw $0000, $0001, $0000, $0000 ; 448 - Unused
	dw $0000, $0001, $0000, $0000 ; 449 - Unused
	dw $0000, $0001, $0000, $0000 ; 450 - Unused
	dw $0000, $0001, $0000, $0000 ; 451 - Unused
	dw $0000, $0001, $0000, $0000 ; 452 - Unused
	dw $0000, $0001, $0000, $0000 ; 453 - Unused
	dw $0000, $0001, $0000, $0000 ; 454 - Unused
	dw $0000, $0001, $0000, $0000 ; 455 - Unused
	dw $0000, $0001, $0000, $0000 ; 456 - Unused
	dw $0000, $0001, $0000, $0000 ; 457 - Unused
	dw $0000, $0001, $0000, $0000 ; 458 - Unused
	dw $0000, $0001, $0000, $0000 ; 459 - Unused
	dw $0000, $0001, $0000, $0000 ; 460 - Unused
	dw $0000, $0001, $0000, $0000 ; 461 - Unused
	dw $0000, $0001, $0000, $0000 ; 462 - Unused
	dw $0000, $0001, $0000, $0000 ; 463 - Unused
	dw $0000, $0001, $0000, $0000 ; 464 - Unused
	dw $0000, $0001, $0000, $0000 ; 465 - Unused
	dw $0000, $0001, $0000, $0000 ; 466 - Unused
	dw $0000, $0001, $0000, $0000 ; 467 - Unused
	dw $0000, $0001, $0000, $0000 ; 468 - Unused
	dw $0000, $0001, $0000, $0000 ; 469 - Unused
	dw $0000, $0001, $0000, $0000 ; 470 - Unused
	dw $0000, $0001, $0000, $0000 ; 471 - Unused
	dw $0000, $0001, $0000, $0000 ; 472 - Unused
	dw $0000, $0001, $0000, $0000 ; 473 - Unused
	dw $0000, $0001, $0000, $0000 ; 474 - Unused
	dw $0000, $0001, $0000, $0000 ; 475 - Unused
	dw $0000, $0001, $0000, $0000 ; 476 - Unused
	dw $0000, $0001, $0000, $0000 ; 477 - Unused
	dw $0000, $0001, $0000, $0000 ; 478 - Unused
	dw $0000, $0001, $0000, $0000 ; 479 - Unused
	dw $0000, $0001, $0000, $0000 ; 480 - Unused
	dw $0000, $0001, $0000, $0000 ; 481 - Unused
	dw $0000, $0001, $0000, $0000 ; 482 - Unused
	dw $0000, $0001, $0000, $0000 ; 483 - Unused
	dw $0000, $0001, $0000, $0000 ; 484 - Unused
	dw $0000, $0001, $0000, $0000 ; 485 - Unused
	dw $0000, $0001, $0000, $0000 ; 486 - Unused
	dw $0000, $0001, $0000, $0000 ; 487 - Unused
	dw $0000, $0001, $0000, $0000 ; 488 - Unused
	dw $0000, $0001, $0000, $0000 ; 489 - Unused
	dw $0000, $0001, $0000, $0000 ; 490 - Unused
	dw $0000, $0001, $0000, $0000 ; 491 - Unused
	dw $0000, $0001, $0000, $0000 ; 492 - Unused
	dw $0000, $0001, $0000, $0000 ; 493 - Unused
	dw $0000, $0001, $0000, $0000 ; 494 - Unused
	dw $0000, $0001, $0000, $0000 ; 495 - Unused
	dw $0000, $0001, $0000, $0000 ; 496 - Unused
	dw $0000, $0001, $0000, $0000 ; 497 - Unused
	dw $0000, $0001, $0000, $0000 ; 498 - Unused
	dw $0000, $0001, $0000, $0000 ; 499 - Unused
	dw $0000, $0001, $0000, $0000 ; 500 - Unused
	dw $0000, $0001, $0000, $0000 ; 501 - Unused
	dw $0000, $0001, $0000, $0000 ; 502 - Unused
	dw $0000, $0001, $0000, $0000 ; 503 - Unused
	dw $0000, $0001, $0000, $0000 ; 504 - Unused
	dw $0000, $0001, $0000, $0000 ; 505 - Unused
	dw $0000, $0001, $0000, $0000 ; 506 - Unused
	dw $0000, $0001, $0000, $0000 ; 507 - Unused
	dw $0000, $0001, $0000, $0000 ; 508 - Unused
	dw $0000, $0001, $0000, $0000 ; 509 - Unused
	dw $0000, $0001, $0000, $0000 ; 510 - Unused
	dw $0000, $0001, $0000, $0000 ; 511 - Unused
