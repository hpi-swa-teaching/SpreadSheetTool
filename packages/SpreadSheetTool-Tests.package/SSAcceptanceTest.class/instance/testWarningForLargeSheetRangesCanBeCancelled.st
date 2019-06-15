testing
testWarningForLargeSheetRangesCanBeCancelled
	"Acceptance test for #21"

	self 
		testWarningForLargeSheetRangesCanBeCancelledForDimension: 'columns';
		testWarningForLargeSheetRangesCanBeCancelledForDimension: 'rows'.