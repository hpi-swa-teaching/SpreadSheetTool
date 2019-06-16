testing
testDecreaseNumberOfColumnsWithoutDeletedContent
	"Test for #5 (Resizable tables)"

	^ self testChangeSheetRangeWithoutDeletedContentFor: 'columns' to: self someColumnIndex