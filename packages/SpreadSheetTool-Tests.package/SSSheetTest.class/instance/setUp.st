running
setUp

	sheet := self classUnderTest
		cellFactory: [:r :c | self cellValueForRow: r forColumn: c]
		rowHeaderFactory: [:r | self rowHeaderFor: r]
		columnHeaderFactory: [:c | self columnHeaderFor: c].
	sheet
		rowCount: self rowCount
		columnCount: self columnCount.