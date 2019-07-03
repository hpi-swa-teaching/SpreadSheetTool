accessing
evaluateFormula

	| compiler result finalSource |
	compiler := Compiler new.
	result := compiler evaluate: self rawValue for: self.
	finalSource := compiler parser source contents asString.
	finalSource ~= self rawValue ifTrue: [
		self rawValue: finalSource.
		self changed: #rawValue].
	^ result