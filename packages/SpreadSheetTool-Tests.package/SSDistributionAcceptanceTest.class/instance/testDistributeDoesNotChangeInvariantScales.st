testing
testDistributeDoesNotChangeInvariantScales
	"Test for #8 (Distribute rows/columns)"

	self dimensionsDo: [ :rowsOrColumns |
		self assertDistribute: rowsOrColumns doesNotChange:
			(rowsOrColumns caseOf:
				{	[#rows] -> [#width].
					[#columns] -> [#height]	}) ].