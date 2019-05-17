testing
testDistributeCellsInDimension: aVaryingDimensionSymbol unchangedDimension: anUnchangedDimension dimensionName: aDimensionName

	| cells oldBounds oldScales |
	self bringChaosOverTheSplitters.
	
	cells := self findCells morphs.
	oldBounds := self subject bounds.
	oldScales := (cells collect: [:cell | cell -> (cell in: anUnchangedDimension)]) as: Dictionary.
	
	(self subject findByLabel: 'Distribute ', aDimensionName) click.
	
	self
		assert: (cells collect: aVaryingDimensionSymbol) asSet size = 1
		description: 'All ', aDimensionName, ' should be of equal size'.
	self
		assert: oldBounds equals: self subject bounds
		description: 'The window size should not change while distributing cells'.
	oldScales keysAndValuesDo: [:cell :oldScale |
		self assert: oldScale equals: (cell in: anUnchangedDimension)].