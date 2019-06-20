*SpreadSheetTool-Tests-interacting
sendControl: aCharacter

	self
		sendKeyEvent: #keystroke
		character: aCharacter
		buttons: self class commandModifier