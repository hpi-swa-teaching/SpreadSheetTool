testing
testSheetRangeCanBeChangedFor: aDimensionString rangeSelector: aRangeSelector

	| dimensionTextField cellCount cell |
	dimensionTextField := self subject findByBalloon: aDimensionString.
	cell := self findAnyCell.
	
	cell sendKeys: self someContent.
	
	cellCount := (self in: aRangeSelector) - 1.
	dimensionTextField
		sendClearTextField;
		sendKeys: cellCount asString;
		sendControlSave.
	
	self subject redraw.
	self
		assert: cellCount equals: dimensionTextField text asNumber;
		assert: cellCount equals: (self measureRangeFor: aRangeSelector);
		assert: self someContent equals: cell text asString.