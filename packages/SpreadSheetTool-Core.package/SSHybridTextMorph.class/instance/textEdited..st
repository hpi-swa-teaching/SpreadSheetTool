event handling
textEdited: aText

	self hasEditFocus ifFalse: [
		"Refuse the edit if we did not have the edit focus"
		^ self hasEditFocus: true].
	super textEdited: aText.
	self model wantsToAutosave ifTrue: [
		super acceptTextInModel.
		self hasUnacceptedEdits: false].