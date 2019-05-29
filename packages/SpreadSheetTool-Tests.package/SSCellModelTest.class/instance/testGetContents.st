testing
testGetContents

	cell value: self someString.
	self assert: self someString equals: model contents.