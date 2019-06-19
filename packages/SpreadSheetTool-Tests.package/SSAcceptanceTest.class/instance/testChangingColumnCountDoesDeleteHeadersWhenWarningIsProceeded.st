testing
testChangingColumnCountDoesDeleteHeadersWhenWarningIsProceeded

	^ self
		testChangingSheetRangeDoesDelete: (self findHeaderFor: #columns at: self columnCount)
		whenWarningIsProceededForDimension: 'columns'