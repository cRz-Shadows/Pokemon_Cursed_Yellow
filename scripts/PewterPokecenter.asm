PewterPokecenter_Script:
	call EnableAutoTextBoxDrawing
	ld hl, PewterPokecenter_ScriptPointers
	ld a, [wPewterPokecenterCurScript]
	call CallFunctionInTable
	ld hl, wd492
	set 7, [hl]
	call Serial_TryEstablishingExternallyClockedConnection
	call EnableAutoTextBoxDrawing
	ret

PewterPokecenter_TextPointers:
	def_text_pointers
	dw_const PewterPokecenterNurseText,            TEXT_PEWTERPOKECENTER_NURSE
	dw_const PewterPokecenterGentlemanText,        TEXT_PEWTERPOKECENTER_GENTLEMAN
	dw_const PewterPokecenterJigglypuffText,       TEXT_PEWTERPOKECENTER_JIGGLYPUFF
	dw_const PewterPokecenterLinkReceptionistText, TEXT_PEWTERPOKECENTER_LINK_RECEPTIONIST
	dw_const PewterPokecenterCooltrainerFText,     TEXT_PEWTERPOKECENTER_COOLTRAINER_F
	dw_const PewterPokecenterChanseyText,          TEXT_PEWTERPOKECENTER_CHANSEY

PewterPokecenter_ScriptPointers:
	def_script_pointers
	dw_const CheckFightingMapTrainers,              SCRIPT_PEWTERPOKECENTER_DEFAULT
	dw_const DisplayEnemyTrainerTextAndStartBattle, SCRIPT_PEWTERPOKECENTER_START_BATTLE
	dw_const EndTrainerBattle,                      SCRIPT_PEWTERPOKECENTER_END_BATTLE
	dw_const PewterPokecenterPostBattle,            SCRIPT_PEWTERPOKECENTER_BROCK_POST_BATTLE

PewterPokecenterNurseText:
	script_pokecenter_nurse

PewterPokecenterGentlemanText:
	text_far _PewterPokecenterGentlemanText
	text_end

PewterPokecenterJigglypuffText:
	text_asm
	farcall PewterJigglypuff
	jp TextScriptEnd

PewterPokecenterLinkReceptionistText:
	script_cable_club_receptionist

PewterPokecenterCooltrainerFText:
	text_asm
	farcall PewterPokecenterPrintCooltrainerFText
	jp TextScriptEnd

PewterPokecenterChanseyText:
	text_asm
	ld hl, .NurseJoyBattleTextText
	call PrintText
	call Delay3
	ld a, OPP_JOY
	ld [wCurOpponent], a
	ld a, 1
	ld [wTrainerNo], a
	ld a, $4 ; new script
	ld [wPewterPokecenterCurScript], a
	ld [wCurMapScript], a
	jp TextScriptEnd
.NurseJoyBattleTextText
	text_far _ChanseyBattleText
	text_end

PewterPokecenterPostBattle:
	jp TextScriptEnd