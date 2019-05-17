testing
testDistributeCellsInDimension: aVaryingDimensionSymbol unchangedDimension: anUnchangedDimension dimensionName: aDimensionName

	| cells oldScales |
	self bringChaosOverTheSplitters.
	
	cells := self findCells morphs.
	oldScales := (cells collect: [:cell | cell -> (cell in: anUnchangedDimension)]) as: Dictionary.
	
	(self subject findByLabel: 'Distribute ', aDimensionName) click.
	
	self assert: 1 equals: (cells collect: aVaryingDimensionSymbol) asSet size.
	oldScales keysAndValuesDo: [:cell :oldScale |
		self assert: oldScale equals: (cell in: anUnchangedDimension)].