instance creation
column: aColumnIndex parent: aModel

	^ self new
		parent: aModel;
		generateColumnLabelFor: aColumnIndex;
		yourself