instance creation
row: aRowIndex parent: aModel

	^ self new
		parent: aModel;
		generateRowLabelFor: aRowIndex;
		yourself