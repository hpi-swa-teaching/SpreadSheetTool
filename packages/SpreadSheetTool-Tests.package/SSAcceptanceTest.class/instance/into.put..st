tools
into: aTextMorph put: aString

	aTextMorph
		sendClearTextField;
		sendKeys: aString;
		sendControlSave.