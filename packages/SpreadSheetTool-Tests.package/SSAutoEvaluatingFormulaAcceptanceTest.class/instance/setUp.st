running
setUp

	| referencedIndex |
	super setUp.
	
	referencedIndex := self someCellIndex.
	referencedCell := self findCellAt: referencedIndex.
	referencingCell := self findCellAt: referencedIndex + (1 @ 0).
	indirectlyReferencingCell := self findCellAt: referencedIndex + (1 @ 1).
	
	referencingCell
		sendKeys: '^cell left';
		sendControlSave.
	indirectlyReferencingCell
		sendKeys: '^cell above';
		sendControlSave.
	
	self enableAutoEvaluate.