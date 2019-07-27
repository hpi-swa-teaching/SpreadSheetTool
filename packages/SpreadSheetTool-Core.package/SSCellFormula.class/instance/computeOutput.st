evaluation
computeOutput

	| latestOutput |
	latestOutput := self output.
	self isBusy ifTrue: [self error: 'Cyclic cell reference detected'].
	self beBusyWhile: [self evaluate].
	self output ~= latestOutput
		ifTrue: [self changed: #output with: self].
	^ self output