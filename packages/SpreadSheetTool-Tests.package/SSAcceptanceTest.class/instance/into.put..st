tools
into: aTextMorph put: aString

	aTextMorph
		sendClearTextField;
		sendKeys: aString;
		sendControlSave.
	aTextMorph wait; flag: #suspicious. "todo: do we need this?"