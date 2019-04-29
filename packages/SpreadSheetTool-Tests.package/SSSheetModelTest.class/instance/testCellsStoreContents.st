testing
testCellsStoreContents

	|row column contents|
	
	row := 2.
	column := 3.
	contents := 'Squeak forever! <3'.
	
	sheet gridAtRow: row atColumn: column put: contents.
	
	self assert: (sheet gridAtRow: row atColumn: column) equals: contents