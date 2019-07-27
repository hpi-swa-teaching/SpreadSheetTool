testing
testDecreaseRange
	"Acceptance test for #5 (Resizable tables)"

	self dimensionsDo: [:dimension |
		self testResize: dimension to:
			(self measureRangeFor: dimension) sqrtFloor]