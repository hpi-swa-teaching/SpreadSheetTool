testing
testWarningForLargeSheetRangesCanBeContinuedForDimension: aDimension withSelector: aSheetRangeSelector
	"Acceptance test for #21"
	<timeout: 25 "seconds">

	self
		should: [self enter: self someVeryLargeNumber forDimension: aDimension]
		raise: ProvideAnswerNotification
		butHandleException: [:notification |
			notification resume: true].
	self assert: self someVeryLargeNumber equals: (self find: aSheetRangeSelector).