testing
testRowCountColumnCount

	| row column newRowCount newColumnCount |
	newRowCount := self someRowIndex.
	newColumnCount := self someColumnIndex.
	row := self someRowIndexIn: newRowCount.
	column := self someColumnIndexIn: newColumnCount.
	
	(sheet atRow: row atColumn: column)
		value: self someValue.
	sheet
		rowCount: newRowCount
		columnCount: newColumnCount.
	
	self
		assert: newRowCount equals: sheet rowCount;
		assert: newColumnCount equals: sheet columnCount;
		assert: self someValue
			equals: (sheet atRow: row atColumn: column) value.