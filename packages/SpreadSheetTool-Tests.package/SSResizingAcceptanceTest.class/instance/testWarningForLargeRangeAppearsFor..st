testing per dimension
testWarningForLargeRangeAppearsFor: aDimension
	"Acceptance test for #21 (Warning/error message for bad sheet dimension inputs)"

	self
		should: [self resize: aDimension to: self someVeryLargeNumber]
		notify: 'long time'.