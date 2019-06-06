instance creation
cell: aCell parent: aModel

	^ (self parent: aModel)
		cell: aCell;
		yourself