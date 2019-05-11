testing
assertNumberOfCellsCanBeChangedForDimension: aDimensionString

	| dimensionCountSymbol dimensionTextField cellCount cell someContent |
	dimensionCountSymbol := ((aDimensionString withoutTrailing: 's'),
		'count' withFirstCharacterUppercase) asSymbol.
	
	dimensionTextField := self subject findByBalloon: aDimensionString.
	self
		assert: 1 equals: dimensionTextField morphs size;
		assert: (dimensionCountSymbol value: self) equals: dimensionTextField text asNumber.
	
	someContent := 'Carpe Squeak'.
	(cell := self findAnyCell)
		sendKeys: someContent;
		sendControlSave.
	
	cellCount := (dimensionCountSymbol value: self) - 1.
	dimensionTextField
		sendClearTextField;
		sendKeys: cellCount asString;
		sendControlSave.
	
	self
		assert: dimensionTextField text asNumber equals: cellCount;
		assert: cellCount equals: (dimensionCountSymbol value: model);
		assert: someContent equals: cell text asString.