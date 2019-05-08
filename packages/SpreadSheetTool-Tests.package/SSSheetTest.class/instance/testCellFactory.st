testing
testCellFactory

	| sheet |
	sheet := SSSheet new.
	sheet cellFactory: [:row :column | row @ column].
	sheet rowCount: self rowCount columnCount: self columnCount.
	
	1 to: self rowCount do: [:r |
		1 to: self columnCount do: [:c |
			self
				assert: r @ c
				equals: (sheet atRow: r atColumn: c) value]]