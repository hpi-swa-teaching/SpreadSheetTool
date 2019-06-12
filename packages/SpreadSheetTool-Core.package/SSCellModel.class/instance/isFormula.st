accessing
isFormula

	unacceptedContents ifNil: [^ false].
	^ unacceptedContents beginsWith: '^'