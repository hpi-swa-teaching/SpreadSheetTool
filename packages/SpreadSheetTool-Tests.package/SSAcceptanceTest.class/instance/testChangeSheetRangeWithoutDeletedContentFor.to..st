testing
testChangeSheetRangeWithoutDeletedContentFor: dimension to: newRange

	| otherDimension otherRange newRowCount newColumnCount dimensionTextField oldContents someIndex oldColumnHeaders oldRowHeaders |
	otherDimension := self invertDimension: dimension.
	otherRange := self measureRangeFor: otherDimension.
	newRowCount := ((dimension = 'rows') ifTrue: [newRange] ifFalse: [otherRange]).
	newColumnCount := ((dimension = 'columns') ifTrue: [newRange] ifFalse: [otherRange]).
	
	dimensionTextField := self findDimensionFieldFor: dimension.
	someIndex := (1 @ 1) flag: #todo "No good testing data".
	(self findCellAt: someIndex) sendKeys: self someContent.
	
	oldContents := Matrix
		rows: (self measureRangeFor: 'rows')
		columns: (self measureRangeFor: 'columns')
		tabulate: [:row :column | (self findCellAt: column @ row) focusAndRead].
	oldRowHeaders := (self findHeadersFor: #rows) collect: [:header | header text asString].
	oldColumnHeaders := (self findHeadersFor: #columns) collect: [:header | header text asString].
	
	dimensionTextField
		sendClearTextField;
		sendKeys: newRange asString;
		sendControlSave.
	
	self subject redraw.
	self
		assert: newRange equals: dimensionTextField text asNumber;
		assert: newRange equals: (self measureRangeFor: dimension).
	
	oldContents withIndicesDo: [:content :row :column |
		(row @ column) <= (newRowCount @ newColumnCount)
			ifTrue: [self
				assert: content
				equals: (self findCellAt: column @ row) focusAndRead]].
	oldRowHeaders withIndexDo: [:header :index |
		index <= newRowCount ifTrue: [
			self assert: header equals: (self findHeaderFor: 'rows' at: index) text asString]].
	oldColumnHeaders withIndexDo: [:header :index |
		index <= newColumnCount ifTrue: [
			self assert: header equals: (self findHeaderFor: 'columns' at: index) text asString]].
	
	self
		assert: otherRange equals: (self measureRangeFor: otherDimension);
		assertRowHeadersRegularWithoutFirst: oldRowHeaders size;
		assertColumnHeadersRegularWithoutFirst: oldColumnHeaders size.