accessing
value

	self clearServers.
	^ self isFormula
		ifFalse: [self rawValue]
		ifTrue: [self evaluateFormula]