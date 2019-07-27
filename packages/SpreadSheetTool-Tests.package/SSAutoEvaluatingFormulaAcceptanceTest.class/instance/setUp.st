running
setUp

	super setUp.
	
	referencedCell := self findCellAt: self someCellIndex.
	referencingCell := self findCellAt: self someCellIndex + (1 @ 0).
	indirectlyReferencingCell := self findCellAt: self someCellIndex + (1 @ 1).
	referencingCell
		sendKeys: '^cell left';
		sendControlSave.
	indirectlyReferencingCell
		sendKeys: '^cell above';
		sendControlSave.
	
	self enableAutoEvaluate.