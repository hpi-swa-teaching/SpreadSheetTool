testing
testFormulaAutoUpdateChainReaction

	referencedCell
		sendKeys: self someOtherContent;
		sendControlSave.
	
	self assert: self someOtherContent equals: indirectlyReferencingCell read.