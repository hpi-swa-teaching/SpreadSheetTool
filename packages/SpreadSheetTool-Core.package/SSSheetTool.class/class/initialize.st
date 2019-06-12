class initialization
initialize

	super initialize.
	savedSheets := Dictionary new.
	self registerInWorldMenu.
	
	TextMorphForEditView initialize.