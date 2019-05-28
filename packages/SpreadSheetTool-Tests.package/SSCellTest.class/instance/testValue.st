testing
testValue
	
	cell value: self someValue.
	
	self assert: self someValue equals: cell value.