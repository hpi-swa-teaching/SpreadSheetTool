evaluation
computeOutput

	| latestOutput |
	latestOutput := self output.
	self isBusy ifTrue: [self error: 'Cyclic cell reference detected'].
	self beBusyWhile: [self evaluateNotifying: model controller].
	self output ~= latestOutput
		ifTrue: [self changed: #output].
	^ self output