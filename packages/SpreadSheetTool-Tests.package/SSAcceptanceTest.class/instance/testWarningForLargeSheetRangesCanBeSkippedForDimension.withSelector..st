testing
testWarningForLargeSheetRangesCanBeSkippedForDimension: aDimension withSelector: aSheetRangeSelector
	"Acceptance test for #21"

	self
		should: [self enter: self someVeryLargeNumber forDimension: aDimension]
		notify: 'long time'
		thenAnswer: true.
	self subject redraw.
	self assert: self someVeryLargeNumber equals: (self measureRangeFor: aSheetRangeSelector).