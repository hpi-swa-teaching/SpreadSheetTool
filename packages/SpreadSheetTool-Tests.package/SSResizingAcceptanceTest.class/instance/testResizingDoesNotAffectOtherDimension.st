testing
testResizingDoesNotAffectOtherDimension
	"Acceptance test for #5 (Resizable tables)"

	self dimensionsDo: [:dimension |
		self testResizing: dimension doesNotAffect:
			(self invertDimension: dimension)]