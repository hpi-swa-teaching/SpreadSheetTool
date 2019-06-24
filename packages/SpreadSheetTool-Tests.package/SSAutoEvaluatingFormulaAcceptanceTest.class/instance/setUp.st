running
setUp

	| referencedIndex |
	referencedIndex := self someCellIndex.
	referencedCell := self findCellAt: referencedIndex.
	referencingCell := self findCellAt: referencedIndex + (1 @ 0).
	indirectlyReferencingCell := self findCellAt: referencedCell + (1 @ 1).
	
	referencingCell sendKeys: '^self left'.
	indirectlyReferencingCell sendKeys: '^self above'.
	
	self enableAutoEvaluate.