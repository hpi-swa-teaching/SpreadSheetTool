tools
setUpSteppingSensitiveCell

	self
		at: self someCellIndex
		putGetter: 'Time current'
		putSetter: self someSetterFormula.
	^ self findCellAt: self someCellIndex.