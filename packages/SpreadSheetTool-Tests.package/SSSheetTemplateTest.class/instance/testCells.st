testing
testCells

	| uniqueValues |
	uniqueValues := Set new.
	1 to: self rowCount do: [:row |
		1 to: self columnCount do: [:column | | value |
			value := template atRow: row atColumn: column.
			self
				assert: value isInteger;
				deny: (uniqueValues includes: value).
			uniqueValues add: value]]