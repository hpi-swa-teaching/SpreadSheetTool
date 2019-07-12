class initialization
initialize

	super initialize.
	savedSheets := savedSheets ifNil: [Dictionary new].
	self registerInWorldMenu.
	
	{SSModelConfiguration. SmalltalkEditor. TextMorphForEditView}
		do: #initialize.