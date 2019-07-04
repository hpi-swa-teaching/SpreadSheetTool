evaluation
formulaValue

	| oldValue |
	oldValue := value.
	^ [self evaluateFormula]
		onInterruptEnsure: [value := oldValue].