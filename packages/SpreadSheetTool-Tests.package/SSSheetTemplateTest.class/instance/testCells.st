testing
testCells

	| values |
	values := Set new.
	1 to: self rowCount do: [:row |
		1 to: self columnCount do: [:column | | value |
			value := template atRow: row atColumn: column.
			self
				assert: value isInteger;
				assert: (values like: value) isNil.
			values add: value]]