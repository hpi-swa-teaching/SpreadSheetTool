*SpreadSheetTool-Tests-private-event-generation
sendKeyEvent: aType character: aCharacter buttons: anInteger
	
	self morphs do: [ :morph |
		self hand newKeyboardFocus: morph.
		morph handleEvent: (self
			generateKeyboardEvent: aType
			with: aCharacter asInteger
			buttons: anInteger
			on: morph).	
		self wait].