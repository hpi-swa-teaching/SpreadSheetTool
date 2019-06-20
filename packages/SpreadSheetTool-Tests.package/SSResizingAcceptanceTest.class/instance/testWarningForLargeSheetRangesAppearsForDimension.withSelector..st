testing
testWarningForLargeSheetRangesAppearsForDimension: aDimension withSelector: aSheetRangeSelector
	"Acceptance test for #21"

	self
		should: [self enter: self someVeryLargeNumber forDimension: aDimension]
		notify: 'long time'.