testing
testAcceptContentsDisablesEditMode

	model editMode: true.
	
	model acceptContents: self someText.
	
	self deny: model editMode.