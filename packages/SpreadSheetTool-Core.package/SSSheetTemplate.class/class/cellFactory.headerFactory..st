instance creation
cellFactory: aBlock headerFactory: anotherBlock

	^ self new
		cellFactory: aBlock;
		headerFactory: anotherBlock;
		yourself