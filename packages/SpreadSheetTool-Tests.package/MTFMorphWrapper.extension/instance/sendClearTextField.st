*SpreadSheetTool-Tests-interacting
sendClearTextField

	self
		sendKeyEvent: #keystroke
			character: $a
			buttons: self class commandModifier;
		sendKey: Character backspace.