ViridianPokecenter_Script:
	call EnableAutoTextBoxDrawing
	ld hl, ViridianPokecenter_ScriptPointers
	ld a, [wViridianPokecenterCurScript]
	call CallFunctionInTable
	call Serial_TryEstablishingExternallyClockedConnection
	jp EnableAutoTextBoxDrawing

ViridianPokecenter_TextPointers:
	def_text_pointers
	dw_const ViridianPokecenterNurseText,            TEXT_VIRIDIANPOKECENTER_NURSE
	dw_const ViridianPokecenterGentlemanText,        TEXT_VIRIDIANPOKECENTER_GENTLEMAN
	dw_const ViridianPokecenterCooltrainerMText,     TEXT_VIRIDIANPOKECENTER_COOLTRAINER_M
	dw_const ViridianPokecenterLinkReceptionistText, TEXT_VIRIDIANPOKECENTER_LINK_RECEPTIONIST
	dw_const ViridianPokeCenterChanseyText,          TEXT_VIRIDIANPOKECENTER_CHANSEY

ViridianPokecenter_ScriptPointers:
	def_script_pointers
	dw_const CheckFightingMapTrainers,              SCRIPT_VIRIDIANPOKECENTER_DEFAULT
	dw_const DisplayEnemyTrainerTextAndStartBattle, SCRIPT_VIRIDIANPOKECENTER_START_BATTLE
	dw_const EndTrainerBattle,                      SCRIPT_VIRIDIANPOKECENTER_END_BATTLE
	dw_const ViridianPokecenterPostBattle,          SCRIPT_VIRIDIANPOKECENTER_BROCK_POST_BATTLE

ViridianPokecenterNurseText:
	text_asm
	ld hl, .NurseJoyBattleTextText
	call PrintText
	call Delay3
	ld a, OPP_JOY
	ld [wCurOpponent], a
	ld a, 1
	ld [wTrainerNo], a
	ld a, $4 ; new script
	ld [wViridianPokecenterCurScript], a
	ld [wCurMapScript], a
	ld hl, .NurseJoyDefeatedText
	call PrintText
	jp TextScriptEnd
.NurseJoyBattleTextText
	text_far _NurseJoyBattleText
	text_end
.NurseJoyDefeatedText
	text_far _NurseJoyDefeatedText
	text_end

ViridianPokecenterPostBattle:
	jp TextScriptEnd

ViridianPokecenterGentlemanText:
	text_far _ViridianPokecenterGentlemanText
	text_end

ViridianPokecenterCooltrainerMText:
	text_far _ViridianPokecenterCooltrainerMText
	text_end

ViridianPokecenterLinkReceptionistText:
	script_cable_club_receptionist

ViridianPokeCenterChanseyText:
	script_pokecenter_nurse
	; text_asm
	; callfar PokecenterChanseyText
	; jp TextScriptEnd