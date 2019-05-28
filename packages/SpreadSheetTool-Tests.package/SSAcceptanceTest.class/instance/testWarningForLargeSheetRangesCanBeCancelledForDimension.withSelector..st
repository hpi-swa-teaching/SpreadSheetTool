testing
testWarningForLargeSheetRangesCanBeCancelledForDimension: aDimension withSelector: aSheetRangeSelector
	"Acceptance test for #21"

	| oldSheetRange |
	oldSheetRange := self find: aSheetRangeSelector.
	self
		should: [self enter: self someVeryLargeNumber forDimension: aDimension]
		raise: ProvideAnswerNotification
		butHandleException: [:notification |
			notification resume: false].
	self assert: oldSheetRange equals: (self find: aSheetRangeSelector).