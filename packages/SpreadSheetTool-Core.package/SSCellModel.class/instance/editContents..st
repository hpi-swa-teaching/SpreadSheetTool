interaction
editContents: aTextOrString

	(self isFormula and: [self editMode not])
		ifTrue: [^ self editMode: true].
	self basicEditMode: true.
	unacceptedContents := aTextOrString asString.
	hasUnacceptedEdits := true.
	self shouldAutoSave ifTrue: [
		self saveContents: aTextOrString].