evaluation
tryEvaluate

	isBusy ifTrue: [self error: 'Cycling cell reference detected'].
	[[self beBusy; evaluate]
		onInterruptDo: [
			self editMode: true.
			hasUnacceptedEdits := true]]
				ensure: [self beReady].