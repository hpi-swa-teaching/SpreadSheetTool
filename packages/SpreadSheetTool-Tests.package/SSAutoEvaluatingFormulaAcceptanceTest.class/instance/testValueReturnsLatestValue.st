testing
testValueReturnsLatestValue

	self into: (self findCellAt: self someCellIndex) put: self someContent. 
	self
		shouldFormula: '^ self value'
		in: self someCellIndex
		evaluateTo: self someContent.