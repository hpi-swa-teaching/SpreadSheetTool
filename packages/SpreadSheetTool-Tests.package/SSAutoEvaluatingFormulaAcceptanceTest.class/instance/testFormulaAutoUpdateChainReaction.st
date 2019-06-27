testing
testFormulaAutoUpdateChainReaction
	"acceptance test for #48 (Automatic formula evaluation)"
	
	referencedCell
		sendKeys: self someOtherContent;
		sendControlSave.
	
	self assert: self someOtherContent equals: indirectlyReferencingCell read.