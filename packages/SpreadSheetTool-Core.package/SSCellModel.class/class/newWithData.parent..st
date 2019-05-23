instance creation
newWithData: aCell parent: aModel

	^ (self newWithParent: aModel)
		cell: aCell;
		yourself