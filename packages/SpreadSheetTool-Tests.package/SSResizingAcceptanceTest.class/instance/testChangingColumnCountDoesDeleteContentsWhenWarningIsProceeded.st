testing
testChangingColumnCountDoesDeleteContentsWhenWarningIsProceeded

	^ self
		testChangingSheetRangeDoesDelete: (self findCellAtRow: self rowCount atColumn: self columnCount)
		whenWarningIsProceededForDimension: 'columns'