instance creation
row: aRowIndex parent: aModel

	^ (self parent: aModel)
		header: (SSHeader rowHeaderFor: aRowIndex);
		yourself