testing
testRowCount: aRowCount columnCount: aColumnCount

	| column content row |
	row := self someRowIndexIn: aRowCount.
	column := self someColumnIndexIn: aColumnCount.
	content := template atRow: row atColumn: column.
	template
		rowCount: aRowCount
		columnCount: aColumnCount.
	
	self
		assert: aRowCount equals: template rowCount;
		assert: aColumnCount equals: template columnCount;
		assert: (template atRow: row atColumn: column)
			equals: content.