testing
testSteppingOn

	| cell |
	(self subject findByLabelFilter: 'Stepping*')
		assureOn.
	cell := self setUpSteppingSensitiveCell.
	self assert: [self checkSteppingAffectsCell: cell].