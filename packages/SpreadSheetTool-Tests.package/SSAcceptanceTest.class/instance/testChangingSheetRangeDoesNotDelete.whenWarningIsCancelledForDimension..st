testing
testChangingSheetRangeDoesNotDelete: aMorph whenWarningIsCancelledForDimension: aDimension

	aMorph
		sendClearTextField;
		sendKeys: self someContent.
	
	self
		should: [self tryDecrementSheetInDimension: aDimension]
		notify: 'delete'
		thenAnswer: false.
	
	self
		assert: self rowCount @ self columnCount
			equals: (self measureRangeFor: #rows) @ (self measureRangeFor: #columns);
		assert: self someContent
			equals: aMorph focusAndRead.