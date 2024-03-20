	object_const_def
	const_export SSANNE2FROOMS_GENTLEMAN1
	const_export SSANNE2FROOMS_FISHER
	const_export SSANNE2FROOMS_GENTLEMAN2
	const_export SSANNE2FROOMS_COOLTRAINER_F
	const_export SSANNE2FROOMS_GENTLEMAN3
	const_export SSANNE2FROOMS_MAX_ETHER
	const_export SSANNE2FROOMS_GENTLEMAN4
	const_export SSANNE2FROOMS_GRAMPS
	const_export SSANNE2FROOMS_RARE_CANDY
	const_export SSANNE2FROOMS_GENTLEMAN5
	const_export SSANNE2FROOMS_LITTLE_BOY
	const_export SSANNE2FROOMS_BRUNETTE_GIRL
	const_export SSANNE2FROOMS_BEAUTY

SSAnne2FRooms_Object:
	db $c ; border block

	def_warp_events
	warp_event  2,  5, SS_ANNE_2F, 1
	warp_event  3,  5, SS_ANNE_2F, 1
	warp_event 12,  5, SS_ANNE_2F, 2
	warp_event 13,  5, SS_ANNE_2F, 2
	warp_event 22,  5, SS_ANNE_2F, 3
	warp_event 23,  5, SS_ANNE_2F, 3
	warp_event  2, 15, SS_ANNE_2F, 4
	warp_event  3, 15, SS_ANNE_2F, 4
	warp_event 12, 15, SS_ANNE_2F, 5
	warp_event 13, 15, SS_ANNE_2F, 5
	warp_event 22, 15, SS_ANNE_2F, 6
	warp_event 23, 15, SS_ANNE_2F, 6

	def_bg_events

	def_object_events
	object_event 10,  2, SPRITE_GENTLEMAN, STAY, RIGHT, TEXT_SSANNE2FROOMS_GENTLEMAN1, OPP_GENTLEMAN, 3
	object_event 13,  4, SPRITE_FISHER, STAY, LEFT, TEXT_SSANNE2FROOMS_FISHER, OPP_FISHER, 1
	object_event  0, 14, SPRITE_GENTLEMAN, STAY, RIGHT, TEXT_SSANNE2FROOMS_GENTLEMAN2, OPP_GENTLEMAN, 5
	object_event  2, 11, SPRITE_COOLTRAINER_F, STAY, DOWN, TEXT_SSANNE2FROOMS_COOLTRAINER_F, OPP_LASS, 12
	object_event  1,  2, SPRITE_GENTLEMAN, STAY, DOWN, TEXT_SSANNE2FROOMS_GENTLEMAN3
	object_event 12,  1, SPRITE_POKE_BALL, WALK, NONE, TEXT_SSANNE2FROOMS_MAX_ETHER, MAX_ETHER
	object_event 21,  2, SPRITE_GENTLEMAN, STAY, DOWN, TEXT_SSANNE2FROOMS_GENTLEMAN4
	object_event 22,  1, SPRITE_GRAMPS, STAY, DOWN, TEXT_SSANNE2FROOMS_GRAMPS
	object_event  0, 12, SPRITE_POKE_BALL, WALK, NONE, TEXT_SSANNE2FROOMS_RARE_CANDY, RARE_CANDY
	object_event 12, 12, SPRITE_GENTLEMAN, STAY, DOWN, TEXT_SSANNE2FROOMS_GENTLEMAN5
	object_event 11, 14, SPRITE_LITTLE_BOY, STAY, NONE, TEXT_SSANNE2FROOMS_LITTLE_BOY
	object_event 22, 12, SPRITE_BRUNETTE_GIRL, STAY, LEFT, TEXT_SSANNE2FROOMS_BRUNETTE_GIRL
	object_event 20, 12, SPRITE_BEAUTY, STAY, RIGHT, TEXT_SSANNE2FROOMS_BEAUTY

	def_warps_to SS_ANNE_2F_ROOMS
