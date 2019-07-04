evaluation
evaluateSynchronizing: aBlock

	| oldValue |
	oldValue := value.
	[value := self isFormula
		ifTrue: [self evaluateFormula]
		ifFalse: [self rawValue].
	aBlock value]
		onInterruptEnsure: [value := oldValue].