testing
testRowCountColumnCount

	| row column |
	self
		rowCount: self someRowIndex;
		columnCount: self someColumnIndex.
	row := self someRowIndex.
	column := self someColumnIndex.
	
	(sheet atRow: row atColumn: column)
		rawValue: self someValue.
	sheet
		rowCount: self rowCount
		columnCount: self columnCount.
	
	self
		assert: self rowCount equals: sheet rowCount;
		assert: self columnCount equals: sheet columnCount;
		assert: self someValue
			equals: (sheet atRow: row atColumn: column) value.