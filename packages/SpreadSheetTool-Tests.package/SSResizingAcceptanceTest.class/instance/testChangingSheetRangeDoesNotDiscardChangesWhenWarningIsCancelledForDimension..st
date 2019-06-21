testing
testChangingSheetRangeDoesNotDiscardChangesWhenWarningIsCancelledForDimension: aDimension

	self findAnyCell sendKeys: self someFormula.

	self
		should: [self tryIncrementSheetInDimension: aDimension]
		notify: 'changes'
		thenAnswer: false.
	self subject redraw.
	
	self
		assert: self rowCount @ self columnCount
			equals: (self measureRangeFor: #rows) @ (self measureRangeFor: #columns);
		assert: self someFormula
			equals: self findAnyCell focusAndRead.