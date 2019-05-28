testing
testRowCountColumnCount

	| row column content newRowCount newColumnCount |
	newRowCount := self someRowIndex.
	newColumnCount := self someColumnIndex.
	
	row := self someRowIndexIn: newRowCount.
	column := self someColumnIndexIn: newColumnCount.
	content := template atRow: row atColumn: column.
	template
		rowCount: newRowCount
		columnCount: newColumnCount.
	
	self
		assert: newRowCount equals: template rowCount;
		assert: newColumnCount equals: template columnCount;
		assert: (template atRow: row atColumn: column)
			equals: content.