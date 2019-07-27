assertions
should: tool inspect: anObject

	self wantsToTest: tool.
	self into: self findAnyCell put: '^self identityHash'.
	self
		assert: anObject identityHash asString
		equals: (self findCellAt: self someCellIndex) read.