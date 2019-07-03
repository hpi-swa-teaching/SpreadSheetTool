testing
testAcceptContentsChangesCellRawValue

	model
		editContents: self someText;
		acceptContents.
	
	self assert: self someText asString equals: cell rawValue.