interaction
editContents: aTextOrString

	(self isFormula and: [self editMode not] and: [hasUnacceptedEdits not])
		ifTrue: [self editMode: true.
			^ false].
	self basicEditMode: true.
	unacceptedContents := aTextOrString asString.
	hasUnacceptedEdits := true.
	self shouldAutoSave ifFalse: [^ self].
	self saveContents: aTextOrString.