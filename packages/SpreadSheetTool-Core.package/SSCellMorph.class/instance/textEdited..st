as yet unclassified
textEdited: aText

	self
		setProperty: #alwaysAccept
		toValue: (self model wantsToAutosave: aText asString).
	self model perform: editTextSelector with: aText.
	self update: #style.