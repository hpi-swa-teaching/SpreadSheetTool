accessing
formulaValue

	isValueInvalid ifTrue: [ | compiler finalSource |
		compiler := Compiler new.
		value := compiler evaluate: self rawValue.
		finalSource := compiler parser source contents asString.
		finalSource ~= self rawValue ifTrue: [
			self rawValue: finalSource.
			self changed: #rawValue].
		isValueInvalid := false].
	^ value