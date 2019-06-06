tools
enter: aValue forDimension: aDimension

	(self subject findByBalloon: aDimension)
		sendClearTextField;
		sendKeys: aValue asString;
		sendControlSave