assertions
assertEqualSizeOf: rowsOrColumns

	| varyingScales |
	varyingScales := self findCells
		collect: (rowsOrColumns caseOf:
		{	[#columns] -> [#width].
			[#rows] -> [#height]	}).
	self
		assert: [varyingScales range <= 1]
		description: 'All ', rowsOrColumns, ' should be of equal size'.