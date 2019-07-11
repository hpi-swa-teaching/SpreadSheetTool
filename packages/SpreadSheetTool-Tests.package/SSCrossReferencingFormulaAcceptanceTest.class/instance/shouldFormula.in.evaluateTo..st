assertions
shouldFormula: aFormula in: aCellIndex evaluateTo: aResult 

	| cell |
	cell := self findCellAt: aCellIndex.
	self into: cell put: aFormula.
	
	self assert: aResult asString equals: cell read.