testing
testGetContentsString

	mock value: self someString.
	self assert: self someString equals: propertyField contents.