testing
testWarningForLargeSheetRangesCanBeCancelled
	"Acceptance test for #21"

	self 
		testWarningForLargeSheetRangesCanBeCancelledForDimension: 'columns' withSelector: #columnCount;
		testWarningForLargeSheetRangesCanBeCancelledForDimension: 'rows' withSelector: #rowCount