accessing
evaluate

	self clearServers.
	
	value := self isFormula
		ifTrue: [self formulaValue]
		ifFalse: [self rawValue].