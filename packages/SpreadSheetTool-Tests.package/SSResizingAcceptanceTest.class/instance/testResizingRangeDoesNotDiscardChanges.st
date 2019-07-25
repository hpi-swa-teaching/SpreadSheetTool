testing
testResizingRangeDoesNotDiscardChanges
	"Acceptance test for #5 (Resizable tables)"

	self dimensionsDo: [:dimension |
		self testResizingRangeDoesNotDiscardChangesIn: dimension].