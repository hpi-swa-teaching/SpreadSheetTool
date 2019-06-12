accessing
isFormula

	unacceptedContents ifNil: [^ false].
	^ unacceptedContents startsWith: '^'