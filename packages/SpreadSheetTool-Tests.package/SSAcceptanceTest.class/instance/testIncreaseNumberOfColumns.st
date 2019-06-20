testing
testIncreaseNumberOfColumns
	"Test for #5 (Resizable tables)"

	^ self
		testChangeSheetRangeWithoutDeletedContentFor: #columns
		to: self columnCount + self someColumnIndex
		notChanging: #rows