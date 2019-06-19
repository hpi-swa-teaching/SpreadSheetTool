testing
testChangingSheetRangeDoesDiscardChangesWhenWarningIsProceededForDimension: aDimension

	| newRange oldRange |
	self findAnyCell sendKeys: self someFormula.
		
	oldRange := self measureRangeFor: aDimension.
	newRange := oldRange + 1.
	self
		should: [self enter: newRange forDimension: aDimension]
		notify: 'discard'
		thenAnswer: true.
	self subject redraw.
	
	self
		assert: newRange equals: (self measureRangeFor: aDimension);
		assert: self findAnyCell text isEmpty.