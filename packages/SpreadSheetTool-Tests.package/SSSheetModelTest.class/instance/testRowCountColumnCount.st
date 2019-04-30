testing
testRowCountColumnCount

	| rowCount columnCount content |
	rowCount := self rowCount - 1.
	columnCount := self columnCount - 1.
	content := 42.
	sheet atRow: rowCount atColumn: columnCount put: content.
	
	sheet
		rowCount: self rowCount - 1
		columnCount: self columnCount - 1.
	
	self
		assert: (sheet atRow: rowCount atColumn: columnCount)
		equals: content.