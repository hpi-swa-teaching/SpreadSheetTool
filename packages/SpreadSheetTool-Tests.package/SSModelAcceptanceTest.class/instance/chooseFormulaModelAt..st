tools
chooseFormulaModelAt: aPoint

	| button |
	button := self findModelButtonAt: aPoint.
	self
		should: [button click]
		notify: 'model'
		thenAnswer: SSHybridFormulaHolder asString.
	self subject redraw.