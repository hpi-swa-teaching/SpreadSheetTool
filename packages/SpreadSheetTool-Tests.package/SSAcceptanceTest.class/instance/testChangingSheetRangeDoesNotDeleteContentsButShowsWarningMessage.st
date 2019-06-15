testing
testChangingSheetRangeDoesNotDeleteContentsButShowsWarningMessage

	(self findCellAt: (self rowCount @ self columnCount))
		sendKeys: self someContent.
		
	{'rows'. 'columns'} do: [:dimension | | oldRange |
		oldRange := self measureRangeFor: dimension.
		self
			should: [self enter: oldRange - 1 forDimension: dimension]
			notify: 'delete'
			thenAnswer: false.
		self assert: oldRange equals: (self measureRangeFor: dimension)]