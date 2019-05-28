*SpreadSheetTool-Core-ui requests
inform: aMessage title: aTitle
	"Display a message for the user to read and then dismiss"
	self askForProvidedAnswerTo: aTitle, String crlfcrlf, aMessage ifSupplied: [:answer | 
		^ answer].
	
	^ UserDialogBoxMorph inform: aMessage title: aTitle