testing
testInput
	
	cell input: self someValue notifying: nil ifFail: [self error].
	self assert: self someValue equals: cell input.