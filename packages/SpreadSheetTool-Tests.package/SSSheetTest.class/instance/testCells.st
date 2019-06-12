testing
testCells

	1 to: self rowCount do: [:row |
		1 to: self columnCount do: [:column | 
			self
				assert: (self cellValueForRow: row forColumn: column)
				equals: (sheet atRow: row atColumn: column)]]