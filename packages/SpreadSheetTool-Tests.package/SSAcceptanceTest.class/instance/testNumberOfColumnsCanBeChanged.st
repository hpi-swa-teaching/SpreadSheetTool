testing
testNumberOfColumnsCanBeChanged
	"Test for #5 (Resizable tables)"

	^ self
		testSheetRangeCanBeChangedFor: 'columns'
		rangeSelector: #columnCount