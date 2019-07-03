accessing
evaluate

	value := self isFormula
		ifTrue: [self formulaValue]
		ifFalse: [self rawValue].