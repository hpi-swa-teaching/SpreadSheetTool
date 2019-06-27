testing
testWarningForLargeSheetRangesAppears
	"Acceptance test for #21"

	self
		testWarningForLargeSheetRangesAppearsForDimension: 'columns' withSelector: #columnCount;
		testWarningForLargeSheetRangesAppearsForDimension: 'rows' withSelector: #rowCount.