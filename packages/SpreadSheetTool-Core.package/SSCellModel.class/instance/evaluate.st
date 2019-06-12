evaluation
evaluate

	| result |
	result := [self beBusy.
		self cell value]
		ensure: [self beReady].
	^ result asString