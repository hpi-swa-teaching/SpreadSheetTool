as yet unclassified
newWithData: aCell parent: aModel

	^ (self newWithParent: aModel)
		cell: aCell;
		yourself