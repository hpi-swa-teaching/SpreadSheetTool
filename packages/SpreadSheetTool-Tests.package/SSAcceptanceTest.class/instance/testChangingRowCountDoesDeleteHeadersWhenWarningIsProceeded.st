testing
testChangingRowCountDoesDeleteHeadersWhenWarningIsProceeded

	^ self
		testChangingSheetRangeDoesDelete: (self findHeaderFor: #rows at: self rowCount)
		whenWarningIsProceededForDimension: 'rows'