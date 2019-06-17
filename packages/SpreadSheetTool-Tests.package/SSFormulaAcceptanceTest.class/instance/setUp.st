running
setUp

	super setUp.
	cellContents := Matrix
		rows: self rowCount
		columns: self columnCount
		contents: (self fixtureForCellContents reduce: #,).
	cellContents withIndicesDo: [:value :rowIndex :columnIndex |
		(self findCellAt: columnIndex @ rowIndex)
			sendKeys: value asString].