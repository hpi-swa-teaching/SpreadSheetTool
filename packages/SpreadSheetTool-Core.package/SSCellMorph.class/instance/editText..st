as yet unclassified
editText: aText

	hasEditFocus 
		ifFalse: [hasEditFocus := true. ^ self].
	self 
		setProperty: #alwaysAccept 
		toValue: (self model wantToAutosave: aText asString).
	^ super editText: aText.		