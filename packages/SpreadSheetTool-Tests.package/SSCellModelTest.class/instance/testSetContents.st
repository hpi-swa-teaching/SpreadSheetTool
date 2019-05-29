testing
testSetContents

	model contents: self someText.
	self assert: self someText asString equals: cell value.