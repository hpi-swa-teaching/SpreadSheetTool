testing
testConstructedSheetHasSpecifiedDimensions

	sheet := self classUnderTest
		rowCount: self rowCount
		columnCount: self columnCount.
	
	self
		assert: self rowCount
			equals: sheet rowCount;
		assert: self columnCount
			equals: sheet columnCount.