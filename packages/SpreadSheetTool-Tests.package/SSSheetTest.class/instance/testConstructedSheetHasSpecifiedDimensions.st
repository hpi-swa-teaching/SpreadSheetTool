testing
testConstructedSheetHasSpecifiedDimensions

	| rowCount columnCount |
	rowCount := 6.
	columnCount := 5.
	sheet := SSSheetModel
		rowCount: rowCount
		columnCount: columnCount.
	
	self
		assert: rowCount
		equals: sheet rowCount.
	self
		assert: columnCount
		equals: sheet columnCount.