running
setUp

	template := self classUnderTest
		cellFactory: "self >>> #cellValueForRow:forColumn:" [:r :c | self cellValueForRow: r forColumn: c]
		rowHeaderFactory: "self >>> #rowHeaderFor:" [:r | self rowHeaderFor: r]
		columnHeaderFactory: "self >>> #columnHeaderFor:" [:c | self columnHeaderFor: c].
	template
		rowCount: self rowCount
		columnCount: self columnCount.