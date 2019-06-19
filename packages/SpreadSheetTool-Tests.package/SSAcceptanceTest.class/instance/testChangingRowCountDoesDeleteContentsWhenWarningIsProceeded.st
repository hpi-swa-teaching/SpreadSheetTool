testing
testChangingRowCountDoesDeleteContentsWhenWarningIsProceeded

	^ self
		testChangingSheetRangeDoesDelete: (self findCellAtRow: self rowCount atColumn: self columnCount)
		whenWarningIsProceededForDimension: 'rows'