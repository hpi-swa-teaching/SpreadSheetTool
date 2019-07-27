testing per dimension
testWarningForLargeRangeCanBeSkippedFor: aDimension
	"Acceptance test for #21 (Warning/error message for bad sheet dimension inputs)"

	self
		should: [self resize: aDimension to: self someVeryLargeNumber]
		notify: 'long time'
		thenAnswer: true.
	self assert: self someVeryLargeNumber equals: (self measureRangeFor: aDimension).