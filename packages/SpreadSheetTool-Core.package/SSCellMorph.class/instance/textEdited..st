event handling
textEdited: aText

	hasEditFocus ifFalse: [^ self hasEditFocus: true].
	super textEdited: aText.
	(self model wantsToAutosave: aText asString)
		ifTrue: [self acceptContents: aText].