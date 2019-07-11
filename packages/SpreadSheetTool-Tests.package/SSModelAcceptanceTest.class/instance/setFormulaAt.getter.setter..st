tools
setFormulaAt: aPoint getter: aGetter setter: aSetter

	| formulaButton |
	formulaButton := self findButtonAt: aPoint byLabel: 'formula'.
	self
		should: [self
			should: [formulaButton click]
			notify: 'get*formula'
			thenAnswer: aGetter]
		notify: 'set*formula'
		thenAnswer: aSetter.
	self subject wait.