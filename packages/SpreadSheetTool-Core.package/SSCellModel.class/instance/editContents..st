interaction
editContents: aTextOrString

	unacceptedContents := aTextOrString asString.
	hasUnacceptedEdits := true.
	self isFormula ifTrue: [^ self].
	self saveContents: aTextOrString.
	latestValue := unacceptedContents.
	self contentsChanged.