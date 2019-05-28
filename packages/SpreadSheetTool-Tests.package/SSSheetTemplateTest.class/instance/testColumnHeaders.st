testing
testColumnHeaders

	1 to: self columnCount do: [:column |
		self assert: (self columnHeaderFor: column) equals: (template columnHeaderAt: column)]