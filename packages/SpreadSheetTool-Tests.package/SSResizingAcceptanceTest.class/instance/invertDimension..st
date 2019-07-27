tools
invertDimension: dimension
	
	^ dimension caseOf: {
		[#rows] -> [#columns].
		[#columns] -> [#rows] }