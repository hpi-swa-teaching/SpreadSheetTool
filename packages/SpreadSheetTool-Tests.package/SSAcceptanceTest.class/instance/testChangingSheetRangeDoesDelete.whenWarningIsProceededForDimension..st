testing
testChangingSheetRangeDoesDelete: aMorph whenWarningIsProceededForDimension: aDimension

	| newRange oldRange |
	aMorph
		sendClearTextField;
		sendKeys: self someContent.
		
	oldRange := self measureRangeFor: aDimension.
	newRange := oldRange - 1.
	self
		should: [self enter: newRange forDimension: aDimension]
		notify: 'delete'
		thenAnswer: true.
	self subject redraw.
	self assert: newRange equals: (self measureRangeFor: aDimension).