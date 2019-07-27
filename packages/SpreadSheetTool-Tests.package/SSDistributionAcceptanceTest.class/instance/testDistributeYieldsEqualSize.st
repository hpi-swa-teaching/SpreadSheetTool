testing
testDistributeYieldsEqualSize
	"Test for #8 (Distribute rows/columns)"

	self dimensionsDo: [:dimension |
		self distribute: dimension.
		self assertEqualSizeOf: dimension].