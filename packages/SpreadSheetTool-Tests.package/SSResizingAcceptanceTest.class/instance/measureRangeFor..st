tools
measureRangeFor: aDimension

	| coordinate |
	coordinate := aDimension = #rows ifTrue: [#y] ifFalse: [#x].
	^ (self findCells morphs 
		groupBy: [:aCell | aCell position in: coordinate]) size