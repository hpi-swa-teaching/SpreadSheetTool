interaction
editContents: aTextOrString

	unacceptedContents := aTextOrString asString.
	hasUnacceptedEdits := true.
	self shouldAutoSave ifFalse: [^ self].
	self saveContents: aTextOrString.
	self contentsChanged.