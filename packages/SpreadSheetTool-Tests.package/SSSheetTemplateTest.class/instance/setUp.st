running
setUp

	template := self classUnderTest
		cellFactory: self someCellFactory
		headerFactory: [self someHeaderContent].
	template
		rowCount: self rowCount
		columnCount: self columnCount.