testing
assertSheetRangeCanBeChangedFor: aDimensionString rangeSelector: aRangeSelector

	| dimensionTextField cellCount cell |
	dimensionTextField := self subject findByBalloon: aDimensionString.
	self
		assert: dimensionTextField morphs hasSingle;
		assert: (self in: aRangeSelector) equals: dimensionTextField text asNumber.
	
	(cell := self findAnyCell)
		sendKeys: self someContent.
	
	cellCount := (self in: aRangeSelector) - 1.
	dimensionTextField
		sendClearTextField;
		sendKeys: cellCount asString;
		sendControlSave.
	self subject redraw.
	
	self
		assert: cellCount equals: dimensionTextField text asNumber;
		assert: cellCount equals: (self find: aRangeSelector);
		assert: self someContent equals: cell text asString.