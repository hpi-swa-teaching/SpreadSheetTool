evaluation
isFormula

	unacceptedContents ifNil: [^ false].
	^ unacceptedContents beginsWith: '^'