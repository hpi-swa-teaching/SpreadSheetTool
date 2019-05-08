testing
testRowCountColumnCount

	| row column content newRowCount newColumnCount |
	row := self rowCount - 2.
	column := self columnCount - 3.
	content := 42.
	sheet atRow: row atColumn: column put: content.
	newRowCount := self rowCount - 1.
	newColumnCount := self columnCount - 1.
	
	sheet
		rowCount: newRowCount
		columnCount: newColumnCount.
	
	self
		assert: newRowCount equals: sheet rowCount;
		assert: newColumnCount equals: sheet columnCount.
	self
		assert: (sheet atRow: row atColumn: column)
		equals: content.