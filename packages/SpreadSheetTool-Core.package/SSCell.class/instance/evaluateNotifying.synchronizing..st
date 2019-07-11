evaluation
evaluateNotifying: aRequestor synchronizing: aBlock

	| oldValue |
	oldValue := value.
	[value := self isFormula
		ifTrue: [self evaluateFormulaNotifying: aRequestor]
		ifFalse: [self rawValue].
	aBlock value]
		onInterruptEnsure: [value := oldValue].