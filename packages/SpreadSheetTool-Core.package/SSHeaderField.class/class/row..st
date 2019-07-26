instance creation
row: aRowIndex

	^ self new
		generateRowLabelFor: aRowIndex;
		yourself