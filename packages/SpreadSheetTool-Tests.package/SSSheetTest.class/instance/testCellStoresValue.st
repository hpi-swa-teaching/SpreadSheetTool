testing
testCellStoresValue

	(sheet atRow: self someRowIndex atColumn: self someColumnIndex)
		value: self someValue.
	
	self
		assert: self someValue
		equals: (sheet
			atRow: self someRowIndex
			atColumn: self someColumnIndex) value.