testing
testSheetRangeCanBeChangedFor: aDimensionString rangeSelector: aRangeSelector

	| dimensionTextField newRange cell |
	dimensionTextField := self findDimensionFieldFor: aDimensionString.
	cell := self findAnyCell.
	
	cell sendKeys: self someContent.
	
	newRange := (self in: aRangeSelector) - 1.
	dimensionTextField
		sendClearTextField;
		sendKeys: newRange asString;
		sendControlSave.
	
	self subject redraw.
	self
		assert: newRange equals: dimensionTextField text asNumber;
		assert: newRange equals: (self measureRangeFor: aRangeSelector);
		assert: self someContent equals: cell text asString.