testing
testSetSameRange
	"Acceptance test for #5 (Resizable tables)"

	self dimensionsDo: [:dimension |
		self testSetSameRangeFor: dimension]