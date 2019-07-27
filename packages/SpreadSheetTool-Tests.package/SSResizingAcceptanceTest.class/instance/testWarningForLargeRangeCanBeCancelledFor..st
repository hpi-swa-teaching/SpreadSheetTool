testing per dimension
testWarningForLargeRangeCanBeCancelledFor: aDimension
	"Acceptance test for #21 (Warning/error message for bad sheet dimension inputs)"

	| oldSheetRange |
	oldSheetRange := self measureRangeFor: aDimension.
	self
		should: [self resize: aDimension to: self someVeryLargeNumber]
		notify: 'long time'
		thenAnswer: false.
	self assert: oldSheetRange equals: (self measureRangeFor: aDimension).