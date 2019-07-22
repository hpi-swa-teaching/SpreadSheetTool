evaluation
checkForInputChange: aCompiler

	| finalSource |
	finalSource := aCompiler parser sourceString.
	finalSource = self input ifTrue: [^ self].
	self rawValue: finalSource.
	self changed: #input.