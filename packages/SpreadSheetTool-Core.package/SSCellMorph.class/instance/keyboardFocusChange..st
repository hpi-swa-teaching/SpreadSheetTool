event handling
keyboardFocusChange: aBoolean
	
	super keyboardFocusChange: aBoolean.
	[self flag: #workaround "bug #68, possibly caused by a design problem in Autocompletion
	https://github.com/MrModder/Autocompletion/issues/31#issuecomment-515028011".
	10 milliSeconds wait.
	self hasEditFocus: aBoolean] fork.