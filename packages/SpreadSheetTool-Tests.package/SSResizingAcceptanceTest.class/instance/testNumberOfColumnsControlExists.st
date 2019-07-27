testing
testNumberOfColumnsControlExists
	"Acceptance test for #5 (Resizable tables)"

	^ self
		testRangeControlExistsFor: 'columns'
		rangeSelector: #columnCount