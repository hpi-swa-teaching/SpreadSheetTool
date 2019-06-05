testing
testSetContents

	model contents: self someContent.
	self assert: self someContent equals: self holdedContent.