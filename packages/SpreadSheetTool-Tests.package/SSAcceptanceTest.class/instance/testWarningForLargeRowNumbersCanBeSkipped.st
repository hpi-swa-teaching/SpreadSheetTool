testing
testWarningForLargeRowNumbersCanBeSkipped
	"Acceptance test for #21"
	<timeout: 42 "seconds">
	<longStage>

	self testWarningForLargeSheetRangesCanBeSkippedForDimension: 'rows' withSelector: #rowCount.