testing
testCellFactory

	| constant sheet |
	constant := 42.
	sheet := SSSheet new.
	sheet cellFactory: [constant].
	sheet rowCount: self rowCount columnCount: self columnCount.
	
	1 to: self rowCount do: [:r |
		1 to: self columnCount do: [:c |
			self
				assert: constant
				equals: (sheet atRow: r atColumn: c) value]]