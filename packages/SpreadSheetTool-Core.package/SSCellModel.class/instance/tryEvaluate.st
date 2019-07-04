evaluation
tryEvaluate

	isBusy ifTrue: [self error: 'Cyclic cell reference detected'].
	
	morph beBusyWhile: [
		[self beBusy; evaluate]
			ensure: [self beReady]].