testing
testSheetRangeCanBeChangedFor: aDimension

	| dimensionTextField newRange cell |
	dimensionTextField := self findDimensionFieldFor: aDimension.
	cell := self findAnyCell.
	
	cell sendKeys: self someContent.
	
	newRange := (self measureRangeFor: aDimension) - 1.
	dimensionTextField
		sendClearTextField;
		sendKeys: newRange asString;
		sendControlSave.
	
	self subject redraw.
	self
		assert: newRange equals: dimensionTextField text asNumber;
		assert: newRange equals: (self measureRangeFor: aDimension);
		assert: self someContent equals: cell text asString.