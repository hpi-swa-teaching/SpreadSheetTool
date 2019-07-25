evaluation
evaluate

	| oldOutput |
	oldOutput := output.
	self clearServers.
	[output := isFormula
		ifTrue: [self evaluateFormula]
		ifFalse: [self input].
	self changed]
		onInterruptEnsure: [output := oldOutput].