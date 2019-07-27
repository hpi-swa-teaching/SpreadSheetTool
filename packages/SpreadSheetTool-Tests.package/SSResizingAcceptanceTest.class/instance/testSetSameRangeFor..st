testing per dimension
testSetSameRangeFor: dimension
	"Acceptance test for #5 (Resizable tables)"

	self
		shouldnt: [self resize: dimension to: (self measureRangeFor: dimension)]
		raise: Exception.