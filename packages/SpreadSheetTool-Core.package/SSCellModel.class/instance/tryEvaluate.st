evaluating
tryEvaluate

	isBusy ifTrue: [self error: 'Cyclic cell reference detected'].
	
	[morph beBusyWhile: [
		[self beBusy; evaluate]
			ensure: [self beReady]]]
		on: Abort
		ensure: ["Manifest possible error message written into morph"
			self editContents: morph text].