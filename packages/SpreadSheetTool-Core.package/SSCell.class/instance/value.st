accessing
value

	^ self isFormula
		ifFalse: [self rawValue]
		ifTrue: [self formulaValue]