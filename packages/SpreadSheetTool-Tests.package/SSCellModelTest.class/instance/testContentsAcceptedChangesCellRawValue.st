testing
testContentsAcceptedChangesCellRawValue

	model contentsAccepted: self someText.
	
	self assert: self someText asString equals: cell rawValue.