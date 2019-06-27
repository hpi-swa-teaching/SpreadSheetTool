testing
testChangingSheetRangeDoesNotDiscardChangesForDimension: aDimension

	| newRange oldRange |
	self findAnyCell sendKeys: self someFormula.
		
	oldRange := self measureRangeFor: aDimension.
	newRange := oldRange + 1.
	self enter: newRange forDimension: aDimension.
	self subject redraw.
	
	self
		assert: newRange equals: (self measureRangeFor: aDimension);
		assert: self someFormula equals: self findAnyCell read.