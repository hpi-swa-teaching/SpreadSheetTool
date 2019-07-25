testing
testResizingDoesNotChangeRemainingContents
	"Acceptance test for #5 (Resizable tables)"

	self dimensionsDo: [:dimension |
		self testResizingDoesNotChangeRemainingContentsFor: dimension].