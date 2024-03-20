ViridianNicknameHouse_Script:
	jp EnableAutoTextBoxDrawing

ViridianNicknameHouse_TextPointers:
	def_text_pointers
	dw_const ViridianNicknameHouseBaldingGuyText, TEXT_VIRIDIANNICKNAMEHOUSE_BALDING_GUY
	dw_const ViridianNicknameHouseLittleGirlText, TEXT_VIRIDIANNICKNAMEHOUSE_LITTLE_GIRL
	dw_const ViridianNicknameHouseSpearowText,    TEXT_VIRIDIANNICKNAMEHOUSE_SPEAROW
	dw_const ViridianNicknameHouseSpearySignText, TEXT_VIRIDIANNICKNAMEHOUSE_SPEARY_SIGN

ViridianNicknameHouseBaldingGuyText:
	text_far _ViridianNicknameHouseBaldingGuyText
	text_end

ViridianNicknameHouseLittleGirlText:
	text_far _ViridianNicknameHouseLittleGirlText
	text_end

ViridianNicknameHouseSpearowText:
	text_asm
	ld hl, .Text
	call PrintText
	ld a, SPEAROW
	ld e, $3
	callfar PlayPikachuSoundClip
	call WaitForSoundToFinish
	jp TextScriptEnd

.Text:
	text_far _ViridianNicknameHouseSpearowText
	text_end

ViridianNicknameHouseSpearySignText:
	text_far _ViridianNicknameHouseSpearySignText
	text_end
