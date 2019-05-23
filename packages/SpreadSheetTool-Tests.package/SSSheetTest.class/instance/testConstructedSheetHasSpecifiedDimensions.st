testing
testConstructedSheetHasSpecifiedDimensions

	| rowCount columnCount |
	rowCount := 6.
	columnCount := 5.
	
	sheet := SSSheetTool
		rowCount: rowCount
		columnCount: columnCount.
	
	self
		assert: rowCount
			equals: sheet rowCount;
		assert: columnCount
			equals: sheet columnCount.