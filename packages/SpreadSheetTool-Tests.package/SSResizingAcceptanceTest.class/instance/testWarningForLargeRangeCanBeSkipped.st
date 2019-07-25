testing
testWarningForLargeRangeCanBeSkipped
	"Acceptance test for #21 (Warning/error message for bad sheet dimension inputs)"
	<timeout: 90 "seconds">
	<longStage>

	self dimensionsDo: [:dimension |
		self testWarningForLargeRangeCanBeSkippedFor: dimension]