as yet unclassified
textEdited: aText

	hasEditFocus ifFalse: [^ self hasEditFocus: true].
	self model perform: editTextSelector with: aText.
	self update: #style.
	(self model wantsToAutosave: aText asString)
		ifTrue: [self acceptTextInModel].