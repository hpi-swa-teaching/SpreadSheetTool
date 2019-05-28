testing
testColumnHeaders

	1 to: self columnCount do: [:column |
		self
			assert: self someHeaderContent
			equals: (template columnHeaderAt: column)].
