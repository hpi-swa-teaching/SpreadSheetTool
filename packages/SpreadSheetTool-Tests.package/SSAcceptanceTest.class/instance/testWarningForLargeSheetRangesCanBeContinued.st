testing
testWarningForLargeSheetRangesCanBeContinued
	"Acceptance test for #21"

	self 
		testWarningForLargeSheetRangesCanBeContinuedForDimension: 'columns' withSelector: #columnCount;
		testWarningForLargeSheetRangesCanBeContinuedForDimension: 'rows' withSelector: #rowCount