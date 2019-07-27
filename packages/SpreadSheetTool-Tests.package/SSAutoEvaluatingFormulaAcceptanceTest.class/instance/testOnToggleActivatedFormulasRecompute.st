testing
testOnToggleActivatedFormulasRecompute
	"Acceptance test for #48 (Automatic formula evaluation)"
	
	self disableAutoEvaluate.
	referencedCell
		sendKeys: self someOtherContent;
		sendControlSave.
	self enableAutoEvaluate.
	self assert: self someOtherContent equals: referencingCell read.