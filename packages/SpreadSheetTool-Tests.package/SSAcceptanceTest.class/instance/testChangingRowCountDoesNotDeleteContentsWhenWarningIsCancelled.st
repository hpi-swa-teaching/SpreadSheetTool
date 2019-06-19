testing
testChangingRowCountDoesNotDeleteContentsWhenWarningIsCancelled

	^ self
		testChangingSheetRangeDoesNotDelete: (self findCellAtRow: self rowCount atColumn: self columnCount)
		whenWarningIsCancelledForDimension:  'rows'
