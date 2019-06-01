testing
testWarningForLargeColumnNumbersCanBeSkipped
	"Acceptance test for #21"
	<timeout: 42 "seconds">
	<longStage>

	self testWarningForLargeSheetRangesCanBeSkippedForDimension: 'columns' withSelector: #columnCount.