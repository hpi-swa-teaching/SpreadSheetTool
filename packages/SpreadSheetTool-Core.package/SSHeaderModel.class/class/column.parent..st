instance creation
column: aColumnIndex parent: aModel

	^ (self parent: aModel)
		header: (SSHeader columnHeaderFor: aColumnIndex);
		yourself