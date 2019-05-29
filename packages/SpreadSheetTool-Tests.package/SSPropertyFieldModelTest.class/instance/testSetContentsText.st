testing
testSetContentsText

	propertyField contents: self someText.
	self assert: self someText equals: mock value.