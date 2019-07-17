testing
testChangeSheetRangeFor: dimension to: newRange

	| otherDimension otherRange dimensionTextField oldContents |
	otherDimension := self invertDimension: dimension.
	otherRange := self measureRangeFor: otherDimension.
	
	dimensionTextField := self findDimensionFieldFor: dimension.
	self findAnyCell sendKeys: self someContent.
	
	oldContents := Matrix
		rows: self rowCount
		columns: self columnCount
		tabulate: [:row :column | (self findCellAtRow: row atColumn: column) focusAndRead].
	
	self into: dimensionTextField put: newRange asString.
	
	self subject redraw.
	self
		assert: newRange equals: dimensionTextField text asNumber;
		assert: newRange equals: (self measureRangeFor: dimension).
	
	oldContents withIndicesDo: [:content :row :column |
		self assert: content equals: (self findCellAtRow: row atColumn: column) focusAndRead].
	self
		assert: otherRange equals: (self measureRangeFor: otherDimension);
		assertRowHeadersRegularWithoutFirst: oldContents rowCount;
		assertColumnHeadersRegularWithoutFirst: oldContents columnCount.