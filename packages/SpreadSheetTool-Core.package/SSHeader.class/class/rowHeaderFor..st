instance creation
rowHeaderFor: aRowIndex

	^ self new
		generateRowLabelFor: aRowIndex;
		yourself