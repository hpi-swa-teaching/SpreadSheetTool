testing
assertNumberOfCellsCanBeChangedForDimension: aDimensionString

	| dimensionCountSymbol dimensionTextField cellCount cell |
	dimensionCountSymbol := ((aDimensionString withoutTrailing: 's'),
		'count' ssWithFirstCharacterUppercase) asSymbol.
	
	dimensionTextField := self subject findByBalloon: aDimensionString.
	self
		assert: 1 equals: dimensionTextField morphs size;
		assert: (dimensionCountSymbol value: self) equals: dimensionTextField text asNumber.
	
	(cell := self findAnyCell)
		sendKeys: self someContent;
		sendControlSave.
	
	cellCount := (dimensionCountSymbol value: self) - 1.
	dimensionTextField
		sendClearTextField;
		sendKeys: cellCount asString;
		sendControlSave.
	
	self
		assert: dimensionTextField text asNumber equals: cellCount;
		assert: cellCount equals: (dimensionCountSymbol value: model);
		assert: self someContent equals: cell text asString.