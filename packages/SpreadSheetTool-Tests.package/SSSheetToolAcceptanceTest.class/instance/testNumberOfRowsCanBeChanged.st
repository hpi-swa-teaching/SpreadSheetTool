testing
testNumberOfRowsCanBeChanged
	"Test for #5 (Resizable tables)"

	self
		assertSheetRangeCanBeChangedFor: 'rows'
		rangeSelector: #rowCount