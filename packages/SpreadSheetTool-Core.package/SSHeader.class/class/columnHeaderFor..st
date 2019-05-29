instance creation
columnHeaderFor: aColumnIndex

	^ self new
		generateColumnLabelFor: aColumnIndex;
		yourself