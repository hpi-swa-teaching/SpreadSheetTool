testing
testGetContentsText

	mock value: self someText.
	self assert: self someText equals: propertyField contents.