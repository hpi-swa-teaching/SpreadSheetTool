testing
testSetContentsString

	propertyField contents: self someString.
	self assert: self someString equals: mock value.