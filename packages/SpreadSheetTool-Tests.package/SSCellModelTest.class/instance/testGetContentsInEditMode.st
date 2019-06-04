testing
testGetContentsInEditMode

	cell value: self someString.
	model editMode: true.
	
	self assert: self someString equals: model contents.