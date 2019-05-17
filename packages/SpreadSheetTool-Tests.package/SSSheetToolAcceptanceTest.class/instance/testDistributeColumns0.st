testing
testDistributeColumns0
	"For @MrModder to review: Which degree of abstraction is better?"

	| cells oldHeights |
	self bringChaosOverTheSplitters.
	
	cells := self findCells morphs.
	oldHeights := (cells collect: [:cell | cell -> cell height]) as: Dictionary.
	
	(self subject findByLabel: 'Distribute columns') click.
	
	self assert: 1 equals: (cells collect: #width) asSet size.
	oldHeights keysAndValuesDo: [:cell :oldHeight |
		self assert: oldHeight equals: cell height].