testing
testDecreaseNumberOfRowsWithoutDeletedContent
	"Test for #5 (Resizable tables)"

	^ self testChangeSheetRangeWithoutDeletedContentFor: 'rows' to: self someRowIndex