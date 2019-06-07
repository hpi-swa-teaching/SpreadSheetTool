instance creation
cellFactory: aBlock rowHeaderFactory: anotherBlock columnHeaderFactory: aThirdBlock

	^ self new
		cellFactory: aBlock;
		rowHeaderFactory: anotherBlock;
		columnHeaderFactory: aThirdBlock;
		yourself