running
setUp

	super setUp.
	cellContents := Matrix
		rows: self rowCount
		columns: self columnCount
		contents: (self exampleCellContents reduce: #,).
	cellContents withIndicesDo: [:value :rowIndex :columnIndex |
		(self findCellAtRow: rowIndex atColumn: columnIndex)
			sendKeys: value asString].