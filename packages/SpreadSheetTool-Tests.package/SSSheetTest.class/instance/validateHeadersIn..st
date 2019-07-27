assertions
validateHeadersIn: matrix

	Number one
		to: self columnCount do: [:column | self
			assert: (sheet columnHeaderAt: column)
			equals: (matrix at: 1 at: column + 1)];
		to: self rowCount do: [:row | self
			assert: (sheet rowHeaderAt: row)
			equals: (matrix at: row + 1 at: 1)].