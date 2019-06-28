updating
keyboardFocusChanged: aBoolean

	(self editMode and: [self shouldAutoSave not] and: [hasUnacceptedEdits])
		ifTrue: [^ self].
	
	self editMode: aBoolean.