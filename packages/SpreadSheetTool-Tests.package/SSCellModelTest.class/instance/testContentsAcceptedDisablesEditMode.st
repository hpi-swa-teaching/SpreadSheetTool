testing
testContentsAcceptedDisablesEditMode

	model editMode: true.
	
	model contentsAccepted: self someText.
	
	self deny: model editMode.