testing
testSteppingOff

	| cell |
	(self subject findByLabelFilter: 'Stepping*')
		assureOff.
	cell := self setUpSteppingSensitiveCell.
	self deny: [self checkSteppingAffectsCell: cell].