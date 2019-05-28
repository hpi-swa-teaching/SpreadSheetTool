testing
testRowHeaders

	1 to: self rowCount do: [:row |
		self
			assert: self someHeaderContent
			equals: (template rowHeaderAt: row)].
