evaluation
tryEvaluate

	| oldValue |
	isBusy ifTrue: [self error: 'Cycling cell reference detected'].
	
	oldValue := latestValue.
	[[self beBusy; evaluate]
		onInterruptDo: [
			latestValue := oldValue.
			self editMode: true.
			hasUnacceptedEdits := true]]
				ensure: [self beReady].