testing
testCellStoresValue

	(sheet atRow: self someRowIndex atColumn: self someColumnIndex)
		rawValue: self someValue.
	
	self
		assert: self someValue
		equals: (sheet
			atRow: self someRowIndex
			atColumn: self someColumnIndex) value.