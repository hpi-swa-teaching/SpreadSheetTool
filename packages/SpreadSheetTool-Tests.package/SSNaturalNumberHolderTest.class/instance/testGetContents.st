testing
testGetContents

	mock value: self someValue.
	self assert: self someValue equals: model contents asNumber.