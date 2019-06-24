testing
testFormulaAutoUpdate

	referencedCell
		sendKeys: self someOtherContent;
		sendControlSave.
	
	self assert: self someOtherContent equals: referencingCell read.