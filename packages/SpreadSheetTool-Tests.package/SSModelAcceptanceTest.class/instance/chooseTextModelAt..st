tools
chooseTextModelAt: aPoint

	| button |
	button := self findButtonAt: aPoint byLabel: 'model'.
	[self
		should: [button click]
		notify: 'model'
		thenAnswer: SSTextModel asString	]
			valueSupplyingAnswers: {
				{ '.*set.*default.*'. false }.
				{ '*'. 1 } }.