	db DEX_TANGELA ; pokedex id

	db  95,  55, 75,  60, 100
	;   hp  atk  def  spd  spc

	db NORMAL, NORMAL ; type
	db 200 ; catch rate
	db 166 ; base exp

	INCBIN "gfx/pokemon/front/tangela.pic", 0, 1 ; sprite dimensions
	dw TangelaPicFront, TangelaPicBack

	db SCRATCH, NO_MOVE, NO_MOVE, NO_MOVE ; level 1 learnset
	db GROWTH_MEDIUM_FAST ; growth rate

	; tm/hm learnset
	tmhm SWORDS_DANCE, TOXIC,        BODY_SLAM,    TAKE_DOWN,    DOUBLE_EDGE,  \
	     HYPER_BEAM,   RAGE,         MEGA_DRAIN,   SOLARBEAM,    MIMIC,        \
	     DOUBLE_TEAM,  BIDE,         SKULL_BASH,   REST,         SUBSTITUTE,   \
	     CUT
	; end

	db 0 ; padding
