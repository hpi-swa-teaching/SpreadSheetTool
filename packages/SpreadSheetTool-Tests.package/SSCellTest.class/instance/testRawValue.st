testing
testRawValue
	
	cell rawValue: self someValue.
	self assert: self someValue equals: cell rawValue.