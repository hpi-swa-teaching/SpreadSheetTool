as yet unclassified
keyStroke: anEvent

	hasEditFocus ifFalse: [
		(self readOnly not
			and: [anEvent anyModifierKeyPressed not]
			and: [self eventCharacterModifiesText: anEvent keyCharacter])
				ifTrue: [hasEditFocus := true]].
	^ super keyStroke: anEvent