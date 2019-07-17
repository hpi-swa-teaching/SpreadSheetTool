tools
into: aCell put: aString

	aCell
		sendClearTextField;
		sendKeys: aString;
		sendControlSave.
	aCell wait.
