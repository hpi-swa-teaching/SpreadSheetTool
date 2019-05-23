testing
testCellFactory

	| sheet |
	sheet := SSSheet new
		cellFactory: [:row :column | row @ column];
		rowCount: self rowCount columnCount: self columnCount;
		yourself.
	
	1 to: self rowCount do: [:r |
		1 to: self columnCount do: [:c |
			self
				assert: r @ c
				equals: (sheet atRow: r atColumn: c) value]].