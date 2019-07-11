testing
testChangeModel

	| button |
	button := self findButtonAt: self someCellIndex byLabel: 'model'.
	[self
		should: [button click]
		notify: 'model'
		thenAnswer: Inspector asString	]
			valueSupplyingAnswers: {
				{ '.*constructor.*'. 'new' }.
				{ '.*build.*'. 'buildWith:' }.
				{ '.*getter.*'. 'object' }.
				{ '.*setter.*'. 'object:' }
			}.
	self assert: (self subject findByCriteria: #isPluggableListMorph) isUnique.