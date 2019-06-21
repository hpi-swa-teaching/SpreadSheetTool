testing
testChangingRowCountDoesNotDeleteHeadersWhenWarningIsCancelled

	^ self
		testChangingSheetRangeDoesNotDelete: (self findHeaderFor: #rows at: self rowCount)
		whenWarningIsCancelledForDimension:  'rows'
