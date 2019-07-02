as yet unclassified
textEdited: aText

	self model perform: editTextSelector with: aText.
	self update: #style.
	(self model wantsToAutosave: aText asString)
		ifTrue: [self acceptTextInModel].