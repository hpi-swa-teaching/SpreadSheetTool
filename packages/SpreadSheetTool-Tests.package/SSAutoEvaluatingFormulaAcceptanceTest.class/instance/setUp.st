running
setUp

	| referencedIndex |
	super setUp.
	
	referencedIndex := self someCellIndex.
	referencedCell := self findCellAt: referencedIndex.
	referencingCell := self findCellAt: referencedIndex + (1 @ 0).
	indirectlyReferencingCell := self findCellAt: referencedIndex + (1 @ 1).
	
	referencingCell
		sendKeys: '^self left';
		sendControlSave.
	indirectlyReferencingCell
		sendKeys: '^self above';
		sendControlSave.
	
	self enableAutoEvaluate.