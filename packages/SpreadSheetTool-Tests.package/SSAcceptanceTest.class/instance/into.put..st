tools-interacting
into: aTextMorph put: aString

	aTextMorph
		click;
		sendClearTextField;
		sendKeys: aString;
		sendControlSave.