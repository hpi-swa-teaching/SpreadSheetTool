running
setUp

	template := self classUnderTest
		cellFactory: self someUniqueValueFactory
		headerFactory: self someUniqueValueFactory.
	template
		rowCount: self rowCount
		columnCount: self columnCount.