instance creation
rowHeaderForIndex: anIndex parent: aModel

	^ (self newWithParent: aModel)
		generateRowLabelForIndex: anIndex;
		yourself