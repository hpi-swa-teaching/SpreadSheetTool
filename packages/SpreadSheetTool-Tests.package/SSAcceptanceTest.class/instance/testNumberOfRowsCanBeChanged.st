testing
testNumberOfRowsCanBeChanged
	"Test for #5 (Resizable tables)"

	self
		testSheetRangeCanBeChangedFor: 'rows'
		rangeSelector: #rowCount