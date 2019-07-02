evaluation
tryEvaluate

	| oldValue |
	isBusy ifTrue: [self error: 'Cyclic cell reference detected'].
	
	oldValue := latestValue.
	[[self beBusy; evaluate]
		onInterruptEnsure: [
			latestValue := oldValue.
			"self editMode: true.
			hasUnacceptedEdits := true"]]
				ensure: [self beReady].