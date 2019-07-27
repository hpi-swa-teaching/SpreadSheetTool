testing per dimension
testResize: dimension to: newRange
	"Acceptance test for #5 (Resizable tables)"

	| dimensionTextField |
	dimensionTextField := self findDimensionFieldFor: dimension.
	self into: dimensionTextField put: newRange asString.
	self subject redraw.
	self
		assert: newRange equals: dimensionTextField text asNumber;
		assert: newRange equals: (self measureRangeFor: dimension).