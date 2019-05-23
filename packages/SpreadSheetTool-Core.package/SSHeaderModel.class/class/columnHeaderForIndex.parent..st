instance creation
columnHeaderForIndex: anIndex parent: aModel

	^ (self newWithParent: aModel)
		generateColumnLabelForIndex: anIndex;
		yourself