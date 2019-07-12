testing
testChangeConfiguration

	| button |
	self chooseInspectorModelAt: self someCellIndex.
	button := self findButtonAt: self someCellIndex byLabel: 'configuration'.
	self
		should: [self
			should: [self
				should: [self
					should: [self
						should: [button click]
						notify: 'constructor'
						thenAnswer: 'new']
					notify: 'build'
					thenAnswer: 'buildCodePaneWith:']
				notify: 'getter'
				thenAnswer: 'object']
			notify: 'setter'
			thenAnswer: 'object:']
		notify: 'set*default'
		thenAnswer: false.
	self assert: (self subject findByCriteria: #isPluggableListMorph) morphs isEmpty.