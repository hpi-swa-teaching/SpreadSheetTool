tools
enter: aValue forDimension: aDimension

	(self findDimensionFieldFor: aDimension)
		sendClearTextField;
		sendKeys: aValue asString;
		sendControlSave