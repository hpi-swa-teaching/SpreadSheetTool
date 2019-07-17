evaluation
handleFormulaUpdate: aCompiler

	| finalSource |
	finalSource := aCompiler parser sourceString.
	finalSource = self rawValue ifTrue: [^ self].
	self rawValue: finalSource.
	self changed: #rawValue.