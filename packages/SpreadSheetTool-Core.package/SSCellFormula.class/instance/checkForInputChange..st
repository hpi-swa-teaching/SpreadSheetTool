evaluation
checkForInputChange: aCompiler

	| finalSource |
	finalSource := aCompiler parser sourceString.
	finalSource = self input ifTrue: [^ self].
	self input: finalSource.
	self changed: #input.