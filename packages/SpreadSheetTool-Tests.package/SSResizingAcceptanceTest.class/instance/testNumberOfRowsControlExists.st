testing
testNumberOfRowsControlExists
	"Test for #5 (Resizable tables)"

	^ self
		testSheetRangeControlExistsFor: 'rows'
		rangeSelector: #rowCount