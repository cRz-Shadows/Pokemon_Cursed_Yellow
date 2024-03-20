PokecenterChanseyText::
	ld hl, NurseChanseyText
	call PrintText
	ld e, $3
	callfar PlayPikachuSoundClip
	call WaitForSoundToFinish
	ret

NurseChanseyText:
	text_far _NurseChanseyText
	text_end
