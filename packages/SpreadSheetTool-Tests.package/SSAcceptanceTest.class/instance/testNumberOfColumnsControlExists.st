testing
testNumberOfColumnsControlExists
	"Test for #5 (Resizable tables)"

	self
		testSheetRangeControlExistsFor: 'columns'
		rangeSelector: #columnCount