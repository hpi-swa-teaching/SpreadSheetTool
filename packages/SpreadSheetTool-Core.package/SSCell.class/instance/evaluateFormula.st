accessing
evaluateFormula

	| compiler finalSource |
	compiler := Compiler new.
	value := compiler evaluate: self rawValue for: self.
	finalSource := compiler parser source contents asString.
	finalSource ~= self rawValue ifTrue: [
		self rawValue: finalSource.
		self changed: #rawValue].
	^ value