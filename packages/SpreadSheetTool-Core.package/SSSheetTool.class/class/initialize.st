class initialization
initialize

	super initialize.
	savedSheets ifNil: [savedSheets := Dictionary new].
	self registerInWorldMenu.
	
	{SSModelConfiguration. SmalltalkEditor. TextMorphForEditView}
		do: #initialize.