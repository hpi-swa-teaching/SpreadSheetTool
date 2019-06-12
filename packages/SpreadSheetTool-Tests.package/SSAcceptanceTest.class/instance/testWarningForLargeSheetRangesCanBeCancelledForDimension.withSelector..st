testing
testWarningForLargeSheetRangesCanBeCancelledForDimension: aDimension withSelector: aSheetRangeSelector
	"Acceptance test for #21"

	| oldSheetRange |
	oldSheetRange := self measureRangeFor: aSheetRangeSelector.
	self
		should: [self enter: self someVeryLargeNumber forDimension: aDimension]
		raise: ProvideAnswerNotification
		butHandle: [:notification |
			notification resume: false].
	self assert: oldSheetRange equals: (self measureRangeFor: aSheetRangeSelector).