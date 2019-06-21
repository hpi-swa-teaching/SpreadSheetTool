testing
testChangingColumnCountDoesNotDeleteHeadersWhenWarningIsCancelled

	^ self
		testChangingSheetRangeDoesNotDelete: (self findHeaderFor: #columns at: self columnCount)
		whenWarningIsCancelledForDimension:  'columns'
