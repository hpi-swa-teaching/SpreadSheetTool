testing
testCellOutputReturnsLatestValue
	"acceptance test for #45 (Cross Referencing Formulas: Enhance protocol (1))"

	self into: (self findCellAt: self someCellIndex) put: self someContent. 
	self
		shouldFormula: '^ cell output'
		in: self someCellIndex
		evaluateTo: self someContent.