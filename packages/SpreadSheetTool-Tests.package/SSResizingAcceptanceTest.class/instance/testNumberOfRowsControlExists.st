testing
testNumberOfRowsControlExists
	"Acceptance test for #5 (Resizable tables)"

	^ self
		testRangeControlExistsFor: 'rows'
		rangeSelector: #rowCount