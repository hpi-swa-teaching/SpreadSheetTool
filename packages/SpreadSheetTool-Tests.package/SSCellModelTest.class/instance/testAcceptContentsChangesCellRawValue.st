testing
testAcceptContentsChangesCellRawValue

	model acceptContents: self someText.
	
	self assert: self someText asString equals: cell rawValue.