evaluation
handleFormulaUpdate: aCompiler

	| finalSource |
	finalSource := aCompiler parser source contents asString.
	finalSource ~= self rawValue ifTrue: [
		self rawValue: finalSource.
		self changed: #rawValue]