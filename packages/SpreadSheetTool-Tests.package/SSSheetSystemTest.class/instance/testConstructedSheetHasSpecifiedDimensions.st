testing
testConstructedSheetHasSpecifiedDimensions

	sheet := self classUnderTest newSheet
		rowCount: self rowCount
		columnCount: self columnCount;
		yourself.
	
	self
		assert: self rowCount
			equals: sheet rowCount;
		assert: self columnCount
			equals: sheet columnCount.