testing
testRowHeaderStoresLabel

	(sheet rowHeaderAt: self someRowIndex)
		label: self someLabel.
	
	self
		assert: self someLabel
		equals: (sheet rowHeaderAt: self someRowIndex) label.