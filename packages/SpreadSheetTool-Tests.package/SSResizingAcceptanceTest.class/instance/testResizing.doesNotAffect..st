testing per dimension
testResizing: dimension doesNotAffect: otherDimension
	"Acceptance test for #5 (Resizable tables)"

	| otherRange thisRange |
	thisRange := self measureRangeFor: dimension.
	otherRange := self measureRangeFor: otherDimension.
	self resize: dimension to: thisRange sqrtFloor.
	self assert: otherRange equals: (self measureRangeFor: otherDimension).