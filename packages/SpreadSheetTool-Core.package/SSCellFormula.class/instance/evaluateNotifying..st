evaluation
evaluateNotifying: aController

	| oldOutput |
	oldOutput := output.
	self clearServers.
	[output := self isFormula
		ifTrue: [self evaluateFormulaNotifying: aController]
		ifFalse: [self input].
	self changed]
		onInterruptEnsure: [output := oldOutput].