testing
testCellsStoreContents

	| row column contents |
	
	row := self rowCount - 1.
	column := self columnCount - 1.
	contents := 'Squeak forever! <3'.
	
	sheet atRow: row atColumn: column put: contents.
	
	self
		assert: (sheet atRow: row atColumn: column)
		equals: contents.