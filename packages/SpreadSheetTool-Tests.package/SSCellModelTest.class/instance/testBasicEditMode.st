testing
testBasicEditMode

	model basicEditMode: false.
	self assert: false equals: model editMode.
	
	model basicEditMode: true.
	self assert: true equals: model editMode.