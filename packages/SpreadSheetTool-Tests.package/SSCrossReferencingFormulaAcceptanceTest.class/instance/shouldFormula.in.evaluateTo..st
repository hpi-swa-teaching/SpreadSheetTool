assertions
shouldFormula: aFormula in: aCellIndex evaluateTo: aResult 

	| cell |
	cell := self findCellAt: aCellIndex.
	cell
		sendClearTextField;
		sendKeys: aFormula;
		sendControlSave.
	
	self assert: aResult asString equals: cell read.