testing
testOnToggleActivatedFormulasRecompute

	self disableAutoEvaluate.
	
	referencedCell
		sendKeys: self someOtherContent;
		sendControlSave.
	self enableAutoEvaluate.
	
	self assert: self someOtherContent equals: referencingCell read.