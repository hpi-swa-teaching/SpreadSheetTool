event handling
keyboardFocusChange: aBoolean
	
	super keyboardFocusChange: aBoolean.
	self hasEditFocus: aBoolean.