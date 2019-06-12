accessing
contentsEdited: aTextOrString

	unacceptedContents := aTextOrString asString.
	self isFormula ifTrue: [^ self].
	self contentsAccepted: unacceptedContents.