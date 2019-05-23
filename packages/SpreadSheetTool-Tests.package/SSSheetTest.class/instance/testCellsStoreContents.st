testing
testCellsStoreContents

	| row column |
	
	row := self rowCount - 1.
	column := self columnCount - 1.
	
	sheet atRow: row atColumn: column put: self someContent.
	
	self
		assert: (sheet atRow: row atColumn: column)
		equals: self someContent.