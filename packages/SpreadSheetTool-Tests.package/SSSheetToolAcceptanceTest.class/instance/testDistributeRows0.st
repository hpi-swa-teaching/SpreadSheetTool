testing
testDistributeRows0
	"Test for #8 (Distribute rows/columns)"
	"For @MrModder to review: Which degree of abstraction is better?"

	<skip>
	| cells oldWidths |
	self bringChaosOverTheSplitters.
	
	cells := self findCells morphs.
	oldWidths := (cells collect: [:cell | cell -> cell width]) as: Dictionary.
	
	(self subject findByLabel: 'Distribute rows') click.
	
	self assert: 1 equals: (cells collect: #height) asSet size.
	oldWidths keysAndValuesDo: [:cell :oldWidth |
		self assert: oldWidth equals: cell width].