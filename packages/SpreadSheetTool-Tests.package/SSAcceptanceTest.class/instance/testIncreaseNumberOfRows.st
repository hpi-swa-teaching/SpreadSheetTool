testing
testIncreaseNumberOfRows
	"Test for #5 (Resizable tables)"

	^ self testChangeSheetRangeWithoutDeletedContentFor: 'rows' to: self rowCount + self someRowIndex