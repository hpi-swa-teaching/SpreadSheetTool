evaluation
computeOutput

	self isBusy ifTrue: [self error: 'Cyclic cell reference detected'].
	self beBusyWhile: [self evaluateNotifying: model controller].
	self changed: #output.
	^ self output