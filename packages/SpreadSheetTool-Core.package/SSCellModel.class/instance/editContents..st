interaction
editContents: aTextOrString

	unacceptedContents := aTextOrString asString.
	hasUnacceptedEdits := true.
	self isFormula ifTrue: [^ self].
	self acceptContents: unacceptedContents.