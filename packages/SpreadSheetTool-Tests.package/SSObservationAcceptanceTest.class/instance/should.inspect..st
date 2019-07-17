assertions
should: tool inspect: anObject

	self wantsToTest: tool.
	self
		setFormulaAt: self someCellIndex
		getter: 'self identityHash'
		setter: #default.
	self
		assert: anObject identityHash asString
		equals: (self findCellAt: self someCellIndex) read.