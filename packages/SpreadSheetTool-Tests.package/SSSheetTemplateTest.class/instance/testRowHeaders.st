testing
testRowHeaders

	1 to: self rowCount do: [:row |
		self assert: (self rowHeaderFor: row) equals: (template rowHeaderAt: row)]