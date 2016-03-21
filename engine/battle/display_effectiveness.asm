DisplayEffectiveness: ; 2fb7b (b:7b7b)
	ld a, [wDamageMultipliers]
	and a, $7F
	cp 10
	ret z
	bit 6, a
	jr nz, .notVeryEffective
	cp 10
	ld hl, SuperEffectiveText
	jr nc, .done
.notVeryEffective
	ld hl, NotVeryEffectiveText
.done
	jp PrintText

SuperEffectiveText: ; 2fb8e (b:7b8e)
	TX_FAR _SuperEffectiveText
	db "@"

NotVeryEffectiveText: ; 2fb93 (b:7b93)
	TX_FAR _NotVeryEffectiveText
	db "@"
