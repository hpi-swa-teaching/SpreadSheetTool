testing
testNumberOfColumnsCanBeChanged
	"Test for #5 (Resizable tables)"

	self
		assertSheetRangeCanBeChangedFor: 'columns'
		rangeSelector: #columnCount