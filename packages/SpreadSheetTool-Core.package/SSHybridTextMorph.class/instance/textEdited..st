event handling
textEdited: aText

	self hasEditFocus ifFalse: [^ self hasEditFocus: true].
	super textEdited: aText.
	self model wantsToAutosave ifTrue: [
		super acceptTextInModel.
		self hasUnacceptedEdits: false].