instance creation
cellFactory: aBlock headerFactory: anotherBlock

	^ self
		cellFactory: aBlock
		rowHeaderFactory: anotherBlock
		columnHeaderFactory: anotherBlock