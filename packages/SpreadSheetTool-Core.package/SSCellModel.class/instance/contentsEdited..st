accessing
contentsEdited: aTextOrString

	unacceptedContents := aTextOrString asString.
	hasUnacceptedEdits := true.
	self isFormula ifTrue: [^ self].
	self contentsAccepted: unacceptedContents.