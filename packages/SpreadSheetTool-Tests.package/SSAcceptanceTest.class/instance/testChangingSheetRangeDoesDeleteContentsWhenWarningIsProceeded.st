testing
testChangingSheetRangeDoesDeleteContentsWhenWarningIsProceeded

	(self findCellAt: (self rowCount @ self columnCount))
		sendKeys: self someContent.
		
	{'rows'. 'columns'} do: [:dimension | | oldRange newRange |
		oldRange := self measureRangeFor: dimension.
		newRange := oldRange - 1.
		self
			should: [self enter: newRange forDimension: dimension]
			notify: 'delete'
			thenAnswer: true.
		self assert: newRange equals: (self measureRangeFor: dimension)]