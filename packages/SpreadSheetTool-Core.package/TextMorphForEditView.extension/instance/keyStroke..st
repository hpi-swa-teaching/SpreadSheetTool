*SpreadSheetTool-Core-event handling
keyStroke: evt
	| view |
	
	editView deleteBalloon.
	self editor model: editView model.  "For evaluateSelection"
	view := editView.  "Copy into temp for case of a self-mutating doit"
	(acceptOnCR and: [evt keyCharacter = Character cr])
		ifTrue: [^ self editor accept].
	
	hasUnacceptedEditsSinceKeystroke := false.
	super keyStroke: evt.
	view scrollSelectionIntoView.
	
	(self readOnly not and: hasUnacceptedEditsSinceKeystroke)
		ifTrue: [view textEdited: self contents]