testing
testChangingColumnCountDoesNotDeleteContentsWhenWarningIsCancelled

	^ self
		testChangingSheetRangeDoesNotDelete: (self findCellAtRow: self rowCount atColumn: self columnCount)
		whenWarningIsCancelledForDimension: 'columns'
