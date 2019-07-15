*SpreadSheetTool-Tests-interacting
sendControl: aCharacter

	self
		sendKeyEvent: #keystroke
		character: aCharacter asLowercase		
		buttons: (aCharacter isUppercase 
			ifTrue: [self class commandModifier bitOr: self class shiftModifier]
			ifFalse: [self class commandModifier])