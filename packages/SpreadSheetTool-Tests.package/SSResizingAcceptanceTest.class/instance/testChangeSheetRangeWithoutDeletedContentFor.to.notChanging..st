testing
testChangeSheetRangeWithoutDeletedContentFor: dimension to: newRange notChanging: otherDimension

	| otherRange newRowCount newColumnCount dimensionTextField someIndex oldColumnCount oldRowCount |
	oldRowCount := self measureRangeFor: #rows.
	oldColumnCount := self measureRangeFor: #columns.
	otherRange := self measureRangeFor: otherDimension.
	(dimension = #rows)
		ifTrue: [newRowCount := newRange.
			newColumnCount := otherRange]
		ifFalse: [newColumnCount := newRange.
			newRowCount := otherRange].
	
	dimensionTextField := self findDimensionFieldFor: dimension.
	someIndex := self someCellIndexForRowCount: newRowCount columnCount: newColumnCount.
	(self findCellAt: someIndex) sendKeys: self someContent.
	
	self shouldNotChangeRemainingContentsWhile: [
		self into: dimensionTextField put: newRange asString.
		self subject redraw].
	
	self
		assert: newRange equals: dimensionTextField text asNumber;
		assert: newRange equals: (self measureRangeFor: dimension).
	
	self
		assert: otherRange equals: (self measureRangeFor: otherDimension);
		assertRowHeadersSortedWithoutFirst: oldRowCount;
		assertColumnHeadersSortedWithoutFirst: oldColumnCount.