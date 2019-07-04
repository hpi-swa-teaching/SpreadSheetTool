evaluation
evaluateSynchronizing: aBlock

	| oldValue |
	oldValue := value.
	[value := self isFormula
		ifTrue: [self "formulaValue"evaluateFormula]
		ifFalse: [self rawValue].
	aBlock value]
		onInterruptEnsure: [value := oldValue].