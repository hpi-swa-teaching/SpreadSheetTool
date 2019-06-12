testing
testWarningForLargeSheetRangesCanBeSkippedForDimension: aDimension withSelector: aSheetRangeSelector
	"Acceptance test for #21"

	self
		should: [self enter: self someVeryLargeNumber forDimension: aDimension]
		raise: ProvideAnswerNotification
		butHandle: [:notification |
			notification resume: true].
	self subject redraw.
	self assert: self someVeryLargeNumber equals: (self measureRangeFor: aSheetRangeSelector).