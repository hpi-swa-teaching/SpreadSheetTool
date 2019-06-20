testing
testNumberOfRowsDoesNotAcceptNonInteger
	"Acceptance test for #21 (Warning/error message for bad sheet dimension inputs)"

	^ self testSheetRangeDoesNotAcceptNonIntegerForDimension: 'rows'
	
		
		