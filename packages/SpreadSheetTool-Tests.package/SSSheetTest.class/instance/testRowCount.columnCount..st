testing
testRowCount: aRowCount columnCount: aColumnCount

	| column content row |
	row := self someRowIndexIn: aRowCount.
	column := self someColumnIndexIn: aColumnCount.
	content := sheet atRow: row atColumn: column.
	sheet
		rowCount: aRowCount
		columnCount: aColumnCount.
	
	self
		assert: aRowCount equals: sheet rowCount;
		assert: aColumnCount equals: sheet columnCount;
		assert: (sheet atRow: row atColumn: column)
			equals: content.