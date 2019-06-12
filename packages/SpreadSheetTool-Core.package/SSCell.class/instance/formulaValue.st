accessing
formulaValue

	isValueInvalid ifTrue: [
		value := Compiler evaluate: self rawValue.
		isValueInvalid := false].
	^ value