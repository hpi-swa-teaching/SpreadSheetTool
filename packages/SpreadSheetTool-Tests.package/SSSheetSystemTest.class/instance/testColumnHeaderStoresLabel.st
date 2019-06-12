testing
testColumnHeaderStoresLabel

	(sheet columnHeaderAt: self someColumnIndex)
		label: self someLabel.
	
	self
		assert: self someLabel
		equals: (sheet columnHeaderAt: self someColumnIndex) label.